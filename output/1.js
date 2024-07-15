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
const MTOJAKzxNVjTSv = new Float32Array([-5220, 6331, 3706, -3619, -5407, 8642, 8241, 1921, -8870, -9328, -7409, 4274, 4600, -3968, 5656, -1727, 340, -8837, 9071, -4317, -5520, 4037, -8844, -8286, -9609, -452, 4639, 1549, 7762, 7271, 7399, 8166, 2324, -8481, 852, 1855, -4548, 6241, -8497, 852, 6031, -9925, 2188, 6420, -8012, -3950, -4041, -4536, -5585, 8352, 5020, 2117, 7931, -5606, -1431, 8340, -2380, 5515, -3458, -7807, -8045, 6679, -7439, -2195, 7395, -2357, -4493, 4034, 4503, -8292, 448, 5741, -9045, 8259, 4431, 6259, 2879, 7445, -9152, 6822, 1918, -3406, 9900, -5616, 3989, 6520, -8585, 3297, 8735, -696, 6888, 9939, 735, 7736, 8620, 9742, -6213, -3928, -1589, -9088, -6108, 4099, 7514, 6376, 9487, 7660, 2155, 2365, -2991, -9049, 3672, -684, 512, -2902, 507, 4582, -595, -5595, -4976, -6938, 8803, 3687, -2641, -3836, 1864, -8, 5090, -9284, -2682, 7207, -810, -5091, 2803, -7508, -7845, 5951, -8779, 3784, 4988, 2843, 9082, -7559, -1341, -9032, 2337, 2578, -9679, -4696, -9514, -1582, -8357, -3856, 2907, -6358, 5877, -6455, -297, -2206, 9127, 6790, 1229, 9687, -3691, 7968, 4756, 1014, -6777, 8115, -8650, 47, 5435, -1567, 3524, -1264, -848, -3402, 7471, 5630, 8731, -6591, 1984, 3770, -5200, -5177, 7588, -2694, -9823, -7085, 9092, -4893, -8827, 1197, 2298, 4137, 4350, -5614, 6162, -6283, -3820, -6640, -3991, 5932, -2902, 1658, 3002, 9522, 151, -881, 8900, -802, -7658, -6978, -4975, 8971, 4895, -3646, -432, -5914, -3796, 6504, 6574, -6941, 1333, -9340, -8403, -6903, 9525, 2549, -4094, -6940, 4233, -2011, -2199, -9650, 4108, 4342, 4876, 2783, -8065, 1038, -516, 2414, -7211, -2217, -8466, -5276, 3029, -6631, 9881, 875, 8288, -2886, 161, -6086, 2267, -6593, -5196, -777, 9956, 1819, -3591, -8265, 1520, -6425, 1736, 9485, -1251, 2562, 2104, -5993, -5955, 2898, 5313, -1466, -8489, -9052, 6539, -5087, -4180, -6034, -9837, -864, 8805, 1596, 166, -3397, -8584, -8067, -3072, -3147, -2313, -3991, 4324, -9362, -6758, -1216, 5068, 6090, 527, 2312, 4, 543, -5709, 5649, -4997, 3361, 4988, 8906, -9551, 9416, -146, -4342, -757, 7768, -379, 5134])
const xOLhxb = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const rJLSS = new Int8Array([-7968, 4528, 2565, -9376, -1531, 1495, 4092, -7727, 7903, -8815, -1607, 315, 6228, -9406, 9101, 1970, -3989, -3610, -4707, 2669, 9207, -6350, 9633, 2592, 8659, -5045, -6641, -112, -6724, -7761, 7375, -4502, -5278, 4235, 5983, -5196, 3824, 4529, 7699, -8391, 2611, 5525, -2546, 888, 1473, 3591, -1340, 7196, -7707, -2885, -3297, 3742, 8705, -4542, -6133, 7294, -7334, 6679, -5774, 1441, -4933, -1415, -2874, 3774, -3246, -2456, -2649, 515, -7302, 5349, 1252, -4686, -6657, 1207, 5720, 3169, 158, 6935, -3945, 5490, -3284, -4247, -2484, 8657, -4965, -3733, -9143, 2094, -9040, 2016, -3160, 39, 7519, -6346, 8012, 4842, -5723, -1036, -5657, 8536, 8046, -849, 3162, 3668, 3858, -9961, -2581, 3218, -9534, 8409, 6591, -5039, 9760, -4249, 7569, 5648, 3166, 5285, -7105, 9037, 2614, -1463, 8212, 1537, 9702, -7873, -9053, -5967, 2134, -9649, -5369, 5693, 3010, 227, -4197, -8737, 7310, -7964, -2604, -8980, -4979, -3888, -696, 6357, 8869, -7171, 7043, -9282, -9924, 7925, -6218, -3353, -4943, -7703, -375, -3442, -3925, -4268, -1554, 3341, -3260, -1222, 5788, 2184, -7218, -2261, -6981, 5903, 5781, -670, 2094, -7103, 8127, -6764, -9483, 5770, -6380, -9272, -7462, 6409, 5215, -5559, -1997, -3005, -6818, -9709, -771, 3156, -3169, 8752, -9591, 8532, 7893, -4788, -1603, -1765, 5695, -2373, 6977, 6567, 1221, -5221, -9093, 865, -9438, -1574, -6108, -3657, 7607, -1902, -6777, 474, -9215, 1079, -8989, -8053])
const GLPnQVLrvDNIOYHst = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const DRCZUgMvGZj = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const mJsgCrhvnmtHZoa = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const NdMWtjvrTBVXDJtKFMiE = new Uint8Array([-4007, 2965, -9614, 4591, 8009, -7904, -762, -5097, 1000, -8455, -2282, 7409, 9127, 6383, -7464, 9634, 7705, -5468, 1962, -5945, -5948, -9590, -3493, -7807, -7098, -4931, -8488, 2069, -3235, -6168, -236, 9323, -9167, 2315, 1467, -5553, -5309, -6540, 9840, 8504, 8879, -2564, -1971, -126, -2205, 2799, 3396, 6630, 867, 8326, 8178, 8311, 2262, 1303, 9528, -9071, 9735, 2804, 392, 3576, 3202, 9593, -996, 2033, 772, -381, -7921, -6177, -1710, 5254, 3149, -9952, -1354, -7465, -4693, -6361, -7341, 1297, 7445, 62, -907, -4896, -6922, 6319, 9931, -6914, 60, -7464, 3579, 795, 7419, 2807, -6552, -2826, 9090, -5498, 7892, -6132, -5208, 1362, 3207, -6626, -9518, -5864, 7793, -7104, -4664, 7105, 7830, -2353, -5563, -8286, 9663, -7649, -4685, 7259, -274, -9066, -9965, -5026, 3806, 674, -1590, 3403, -3805, 1628, 717, -8314, 2731, 5064, 3743, -4820, 8537, -7302, 8355, -2258, 939, 5788, -7272, 9604, -46, 252, -3900, 3554, -845, 1533, -7489, -9164, 989, -8920, -3408, 5409, 9968, -601, -1780, 9907, -2736, -6861, -2813, -821, 6737, 3245, -4480, 4963, -4633, 7645, -4066, -793, 4533, -3190, -3248, -9262, 4641, 7575, -3500, -1044, 7523, 4199, 906, 3510, 4971, 4857, 8677, -166, -181, 8308, 4239, 1212, 2439, -1417, 758, -9601, -3730, 9762, 773, -2154, 9671, -7350, -9499, -6214, 8378, -8011, 6194, -9094, 4923, -2036, -1243, 2309, -7575, 9774, 951, 264, 4849, -7720, -1712, -1319, -1981, -3892, 3245, 3233, -3607, 6305, 1736, -61, 8378, 4071, 3509, -9085, -3641, 4856, -7207, 4145, -3445, 9508, -14, -10000, 6883, -8360, -7513, -3715, -3842, 9190, -7651, 6830, -6692, 1232, -378, -6472, -7758, 1851, 4374, -3645, 8202, 6655, -9957, 3307, -718, -1888, -58, 3543, 98, -9817, -4530, 5092, 1469, 8746, -9168, 1012, -8502, 2761, -7525, 8180, -5988, -4917, 6204, -1628, 7213, -8004, 3784, -8798, -3980, 441, 6583, -7186, 4119, -1696, -8150, 505, 6040, -1467, -1460, 48, -9235, 236, -7381, -468, 8209, 2910, 7156, 4129, -9142, -7527, -1924, 7880, 2435, -2394, 1485, -915, -8755, 422, -2319, 8040, 5507, -4185, -7993, 6527, 7871, -4566, -2481, -4231, -479, 5342, -1325, -6393, -5266, -5783, -3880, 3550, -2618, 132, 4086, 4820, 1998, -7015, 5236, -7430, -3472, -2974, 7454, -5923, -197, 7371, -3838, -7769, 9011, -3114, 9171, -4363, -6212, 3032, 7167, -6298, -9214, -1606, -3480, 480, 1984, 5155, -9293, 2704, 8036, 3045, 4171, -5275, -5134, -4589, -2137, 283, 834, -8046, -757, -9004, 5297, 737, 8099, -8300, 3019, 6728, 5794, -6661, 3275, -5545, 9881, -3320, -8894, 6369, 2123, -7309, -6104, -5130, -1779, -8591, 440, 9382, -9154, -4857, -6729, -7648, 8079, 4131, -1701, -764, 6833, 5575, 2380, 6089, 2227, -1126, -6456, -7321, -7607, -2087, 2957, -6625, 7045, 985, 5395, 6358, -8855, 8942, -2878, -9074, 8010, 9583, 2688, 5005, -929, -1318, -7726, 6586, -456, -891, -7474, -9138, 8337, -3550, 914, 6155, -7020, 536, 7682, -7992, -1722, -1513, -1292, 7768, -4625, 719, 2988, -2888, 9193, -2537])
const MnpbptbrkWmmHFLk = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const XxMGjjWh = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const aGpCrPeMdF = new Int8Array([-9296, 3945, 3511, -1058, 1460, 894, -5205, 1348])
const duuCmboDqqGgx = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ZfdGS = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const SWgdR = new Uint8Array([3987, -1051, 4479, -8238, -4871, 1094, 5749, -2503])
const dPiCTEjMXhS = new Float32Array([-8201, 2178, -6533, 1319, -3712, 1751, 7744, -6186, -5713, 7929, -902, -9836, -8468, -9358, -4442, -3008, -3781, 6973, 8263, 3179, 3321, 2936, -9868, -9988, -9454, -1411, -1259, -5349, 8071, -30, 7402, 6260, 2659, 7807, -6188, 4715, 4376, 490, 5945, -9506, 5516, -4283, -2394, 1652, 8126, -4637, -2373, 8274, 2840, -9062, 1426, 4480, -3763, -9944, 1043, -7057, 2419, 83, -5796, -9734, 4960, 9212, 7318, -801, 9306, -9352, 60, -2359, -2239, -5381, -642, -5419, 8173, 5817, 1429, 5943, -5338, 8513, 3511, -1553, 8444, 1110, -3868, -7993, -3245, 4016, -6944, 6142, -1829, -690, 8596, 1287, -6415, -8280, 7919, 6519, -2716, -5314, -2011, -3067, 9807, -9924, -790, 1947, -3673, -3420, 4966, -638, -5705, -29, 6240, -2482, -5444, 5340, -8452, 2419, -9973, 9060, -1100, 9227, -3163, -9718, -9959, 7908, -7091, -3356, -6800, -1304, 3369, 5973, -6948, 4256, -8436, 7141, -357, -5914, 2415, 5824, -7, -2068, -4606, 9089, -462, -1892, -4266, 2795, -8748, 5326, 4221, -7495, 5652, -9716, 5685, -3399, 7387, -9301, 8940, -1203, -1377, 9275, -9500, 3212, 563, 9133, 5866, 5843, 9638, -5012, -3392, -8939, 2406, -5315, 6247, 137, 88, -6309, 2135, 2885, 517, 8466, 6225, 6964, -7249, 6250, -2689, 2322, 9238, 2354, 4865, -3990, -8808, -8301, -3228, 4970, 959, -7519, 645, 9593, -3171, 1499, 3667, -9061, 4671, -6322, -115, 5214, -1369, 6997, 8119, 2543, -7716, -6, 4872, 1814, -3764, 8770, 8283, -4934, 3956, 665, 7720, -9907, -1273, -1698, 84, 3485, -8929, 1558, 1298, 7710, 5345, -2830, -4833, -3519, 5398, -1822, -8878, -7482, 4311, -1876, -2212, 3959, 3911, -7685, 4224, 924, 8242, 5981, -4169, -241, 5952, 4403, 7603, -5085, -7288, 2602, 3363, -2111, 1871, -3432, 880, -6160, -9819, -2735, 2936, -6230, -9330, 9498, -6519, 9046, 4357, -6007, 286, 4621, -2521, -2083, 2958, -7133, -61, -7920, 2146, -5148, 6653, -3535, -6585, -753, 1727, 9797, -4548, 9848, -6382, -3865])
const ZnjpoMzuyWszi = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const ieyyXxz = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const wlMBISnUuKSYuQJ = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const KuUdDLmDdfEcKXRlwd = new Int8Array([8381, -3102, -6775, 7368, 3070, -3384, -9949, 4324, -2938, 2023, -4403, 9459, -1647, -7766, 7099, -3202, -5233, -3573, 1311, -8108, 5391, 2147, -9198, -9123, 1377, 7125, -3859, 4946, 7623, -1520, 2865, -5755, -1609, -2385, 5498, -3481, -1251, 3804, 1341, 6145, -270, -2234, 1658, 8168, 8192, 9329, -7440, 2428, 7018, -9105, -3672, 9525, 3176, 9705, -1155, 6585, 5335, -6236, -7844, 2418, 7832, -9026, -4159, 6778, -7662, 9491, 7309, 7054, -3832, -8365, 5751, -5859, -275, 4133, -3234, -6700, 7258, -5244, 6287, -4289, 7437, 3798, -348, 6528, 6308, -7034, 9609, 4296, 7647, -2903, 5996, 5492, 8081, 3763, 6492, 329, 2874, 786, 2545, 5713, 1259, 7113, -5108, -1740, 2807, -6093, -8388, -3930, -8497, -1943, -8767, 9486, -2863, -3568, 5597, -1933, 7619, 8955, 8612, 369, -45, -9758, -8050, -9208, -2051, -968, -5772, 4971, -8498, -8575, 6050, 1, -521, 8031, -2235, 7200, 4428, -3236, 722, -185, -4147, 7676, -4235, 9314, -4015, -3007, 3941, 6941, 5044, 1478, -8563, -7967, -1413, 509, 9001, -9841, -9502, -3453, -6531, -7928, 9690, 5971, -4524, -4078, 7477, -36, -267, -9052, -3937, -8524, 78, 2830, 5533, 2123, 2098, 3207])
const WElSWFvVbl = new Uint8Array([6985, -1520, -650, 319, -5685, 6862, -3608, -4607, -3145, 5456, 2255, -1641, -2003, 5537, 6656, 697, -6416, 8139, 9839, -1728, 1532, -9322, -4607, -8076, -5516, 8179, 5082, -5005, -6967, 8822, 3179, -1214, -977, -5813, 5612, -937, -377, 3863, -7492, -5682, 7012, -4344, -6240, -3339, -8162, 5379, 468, 8378, -6256, -231, -3587, -6969, -2207, -3358, -5727, 7317, 2121, 485, 2880, -3681, 8768, -4784, -3675, 6687, -5269, 444, -8492, -2770, -1987, -3824, 4570, 4488, 4118, -7876, -3928, -7099, -3110, 113, -8502, 7078, 9737, -3684, -957, -1387, 793, 526, 4339, -2091, -8767, -7054, 1548, 2844, 456, 2411, -6398, 2717, -4966, 8131, 1122, 3527, 1454, 475, -8654, -2585, -830, 129, -5593, -3105, -2740, 2569, -2231, -6256, 6171, -9433, 55, 6767, -2841, -1804, -5859, 1730, 1658, 4211, -5133, 995, 119, 1176, -5824, 8143, -6444, -6019, 6043, -6173, 1529, 7018, -8993, 3676, 8463, 7150, 9078, 4543, -7353, 3079, 5514, 3080, -9491, 4330, 2430, -5513, -3857, -5451, 4128, -4290, 7643, 8614, 9822, 7648, 6000, -2051, 1518, 7813, 5847, -2592, 2758, -6785, -9094, -1242, 7868, 2882, 5773, 7285, -5299, -4436, 1272, -6227, -90, -174, 8365, 8537, 2030, -578, 8363, -5158, 2573, -7053, -800, 4763, 5843, -7409, -4813, -5431, 2949, 8548, -3965, 1965, 356, -2761, -8378, 2266, -7900, 4917, -2284, 5113, -4528, -301, -3231, -5139, 9885, 4591, -7632, 8335, 4441, -7040, 6582, 7704, -6574, -4692, 6060, -3980, -9070, -1837, 2629, 2441, -9899, -4860, 9033, -2506, 1100, -7390, 6676, -6514, -4575, 2688, -6791, -749, -9780, -5155, 5319, 7316, -6744, 5077, 7193, -8473, -4040, -3608, -997, -1301, 9317, 9062, -4396, -2461, 3739, -7417, -191, 8574, -5502, -2776, 5272, 2717, 7582, -4274, 8203, 1362, -5366, 4529, 4473, 3047, -1343, -297, 1389, -9187, -8254, 8769, 3488, -9622, 6639, -6641, -4249, -6746, 9032, 7942, 3168, 4044, 7405, 461, 7259, 4886, -5727, -9964, -7825, -5911, -3754, 5976, -798, 5359, -59, 3226, -3901, -151, -270, 5813, 4174, -1697, 9128, -9212, 5183, 1182, -5088, -4869, 2759, -5223, 9928, 7149, -6007, -9331, 9350, -9287, -5823, 1480, -3062, 9780, 5587, 7203, 2615, -9634, -9556, -4486, -5121, 3762, -5499, 2850, 8836, 5485, 2420, 4669, 2965, -9357, -4066, -6989, 1968, 8697, 5124, -4137, 8527, -331, 4997, -8248, 6778, -664, -6719, -8910, 5853, 538, 1886, 8161, 6818, 8048, 4877, -8503, -7809, -9055, 2623, -9094, -1693, 4237, 3672, 6907, -513, 9268, 1256, -5769, 6296, -2326, 2981, 5166, -3486, -1595, 1912, -7311, 466, 6798, -3752, -9944, -8419, -6997, -6434, -3423, -8233, -2685, -456, -5576, -8495, 2271, -9606, 7537, -1840, -9940, -6716, -9054, 662, -1329, 979, 5866, 4257, 923, 9404, -4278, 6783, -6807, -41, -6308, -5735, 7962, -9101, -2554, 4627, 5001, -3122, 871, 3034, -8643, 6175, 9787, 2759, -5392, 204, 9844, 9873, -7693, 198, 1166, 8348, 4445, 9002, 7618, -7761, -1140, 5474, -5020, 6504, 9907, -7549, -7342, -846, -3381, 6426, 3731, 5130, -2466, -4500, -3648, 7873, 3910, -4224, -5250, 254, 3109, 4401, -9608, 426, -1200, -2412, 9096, 2977, -525, 584, 4686, -4256, -7182])
const muepHZJLr = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const bSetkmJE = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const VswdAHssvfRXEPsfhnUG = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const hgmtHT = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const CWoecXBprjXqyaRfc = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const QjzUAiWam = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ZxiNjBAC = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const DtROaNfzSJDPWDTV = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const pzmxZOxMSSGHgPqgf = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ZgMVEOyXa = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const ceGzs = new Int8Array([-1681, 3815, -2519, -1664, -8116, 173, -7338, -3862, 576, 1015, -6577, -4428, -8229, -8564, -1106, 6087])
const lZHPUcwPfRANvOiIib = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const MSHyhaGCvkk = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const cOTNYOtprf = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const imWufGNthbitEPzfQxQN = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const vdiiEukUyaxwzUZ = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const pNBhezFMrp = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const OPtgtogjEzeaD = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const roXmtJZslLRSuhIzWUy = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const gWvDxAL = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const dvbLWoM = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const nRjddnadYaHACPWHegK = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const AfmqzbYLWatchhgB = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const zRFjJXxxetMQrDlTMO = await AfmqzbYLWatchhgB.requestDevice();
    const dICFoqHoCPqtEME = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "oTgTHvl"
    });
    const eiQPHIaiGgVqSK = dICFoqHoCPqtEME.finish();
    const DbxblPJPWkzMMuzrP = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "fragment",
        code: nRjddnadYaHACPWHegK
    });
    const qgxHQxhpvTfaFOlB = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "vertex",
        code: dvbLWoM
    });
    const wldxObLhVm = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: DbxblPJPWkzMMuzrP,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "src"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "dfzoBKLyEVFmd",
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
            module: qgxHQxhpvTfaFOlB
        }
    });
    const iAJpEeqJJrfVBN = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 3631,
        label: "zSEpmYxrmsqKI",
        type: "occlusion"
    });
    const WfrXAtTZIGQ = iAJpEeqJJrfVBN.count
    const RQOuYIWRjLI = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "asgDHwEzv"
    });
    const nwtRVXFu = RQOuYIWRjLI.beginComputePass({
        label: "gexIIjBssE"
    });
    const fRsnsVsrHLnf = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "compute",
        code: gWvDxAL
    });
    const dMntVMG = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fRsnsVsrHLnf
        },
        label: "ioPBWya",
        layout: "auto"
    });
    const jCfOHeGkVXyLIaP = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "KZeBk",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    });
    const axiME = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "TKUSVSIGjBC",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const IYWpYnd = zRFjJXxxetMQrDlTMO.queue
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 0, roXmtJZslLRSuhIzWUy);
    const CzaYDynkZvuP = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "dMntVMG.bindGroup",
        layout: dMntVMG.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    nwtRVXFu.setBindGroup(0, CzaYDynkZvuP);
    const QXeuThAPEHhFQ = zRFjJXxxetMQrDlTMO.label
    nwtRVXFu.setBindGroup(0, CzaYDynkZvuP);
    nwtRVXFu.setPipeline(dMntVMG);
    nwtRVXFu.setBindGroup(0, CzaYDynkZvuP);
    nwtRVXFu.dispatchWorkgroups(9, 159, 44);
    const jbOqcb = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32uint",
        label: "YNXVhyaR",
        size: {
            width: 83,
            height: 468,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r32uint"]
    });
    const YyeboGqCUPv = jbOqcb.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r32uint",
        label: "KvMPYhSSbFI"
    });
    const BIIzFDxjPfvKRcw = YyeboGqCUPv.label
    const MoIrlBY = zRFjJXxxetMQrDlTMO.queue
    const iAAKTmjqDV = wldxObLhVm.label
    const ZcWXtpmOZccj = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "MxfwjlkblJ"
    });
    const PzwJIAPdqukEoawCp = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "lYmTeyPLZstSzLtdIW",
        size: {
            width: 2511,
            height: 2840,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const SRjdEWiYoFWIS = PzwJIAPdqukEoawCp.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "VJwgUgxbpMCJhFgt"
    });
    const TnjuAai = ZcWXtpmOZccj.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6702726001759713,
                g: 1.4391239275280125,
                b: 0.8515912772952225,
                a: 0.6277619554437459
            },
            loadOp: "clear",
            storeOp: "discard",
            view: SRjdEWiYoFWIS
        }],
        label: "LrvfnErqDmOY",
        maxDrawCount: 1666174645,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    TnjuAai.end();
    const YiSdwC = zRFjJXxxetMQrDlTMO.limits
    const ZzvEgeLsvnlF = nwtRVXFu.label
    const AJpEAuLjVgXH = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "iVIzDXS",
        size: {
            width: 1005,
            height: 76,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const wVidOmlGK = AJpEAuLjVgXH.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rg8unorm",
        label: "oeJkcnhEACnSrAPg"
    });
    const AEXEixzzY = ZcWXtpmOZccj.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5452153417642414,
                g: 0.04905610824063178,
                b: 1.2316199520616014,
                a: 1.8419453760608568
            },
            loadOp: "load",
            storeOp: "discard",
            view: wVidOmlGK,
            depthSlice: 0
        }],
        label: "HBxqRwZCUjw",
        maxDrawCount: 249275700,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    const zUtwNvk = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: DbxblPJPWkzMMuzrP,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "zero"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "WhkNY",
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
            module: qgxHQxhpvTfaFOlB
        }
    });
    AEXEixzzY.setPipeline(zUtwNvk);
    AEXEixzzY.draw(10);
    const ModUAWSgggfvHapC = dMntVMG.label
    const lqvUETCUafi = AfmqzbYLWatchhgB.limits
    const wlvPMb = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: DbxblPJPWkzMMuzrP,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "AUhddKbIT",
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
            module: qgxHQxhpvTfaFOlB
        }
    });
    const PdmBoUunGIAKR = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "huGOyKhMPtIxVecdR"
    });
    const jdBkumCZZtanJ = PdmBoUunGIAKR.beginComputePass({
        label: "tiGLbMQtcIqT"
    });
    const MYHGvmunRTNn = MoIrlBY.label
    const tibKRelIHFIoakYgD = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "eauCKHdJfnESGigMy",
        mappedAtCreation: false,
        size: 52538864,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
    });
    AEXEixzzY.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const UWyXQBcBvGvfGgWL = AfmqzbYLWatchhgB.isFallbackAdapter
    const ZrrVEZEESUEqoBUnNUlg = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32float",
        label: "rIunO",
        size: {
            width: 2530,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rg32float"]
    });
    AEXEixzzY.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const sWIqrDMfdZwM = zRFjJXxxetMQrDlTMO.label
    const VTUdFYwTMEC = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "fragment",
        code: OPtgtogjEzeaD
    });
    nwtRVXFu.end();
    const smiUCAbrgdTg = navigator.gpu.wgslLanguageFeatures
    const SBRwTQONDBDYlBKO = RQOuYIWRjLI.finish();
    const RThXXiyW = iAJpEeqJJrfVBN.type
    AEXEixzzY.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const iUCalhFWGUkMbirm = AfmqzbYLWatchhgB.isFallbackAdapter
    const gNrxMXro = AfmqzbYLWatchhgB.limits
    const aEbcpwZLSuZLGon = zRFjJXxxetMQrDlTMO.limits
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, pNBhezFMrp);
    const YfoPkWVRSz = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "dMntVMG.bindGroup",
        layout: dMntVMG.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    jdBkumCZZtanJ.setBindGroup(0, CzaYDynkZvuP);
    const IqGnTs = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: VTUdFYwTMEC,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "FaPbaHEl",
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
            module: qgxHQxhpvTfaFOlB
        }
    });
    jdBkumCZZtanJ.end();
    const zzcSzyojYIwptcHk = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "compute",
        code: vdiiEukUyaxwzUZ
    });
    const GpenRmDeuSEGBbBWXdZ = AfmqzbYLWatchhgB.isFallbackAdapter
    const TmPkCTHSqbthtG = iAJpEeqJJrfVBN.count
    const xngrlcIMaKM = AJpEAuLjVgXH.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "UfkHVeavmHvHC"
    });
    const nQffPpSVyWldFiKj = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const rYCpIwbyM = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 1894,
        label: "WrJKragoWRDtQHI",
        type: "occlusion"
    });
    const MWKXXkPLvyMQD = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    AEXEixzzY.end();
    const lNqAyscjQsGDpBdFab = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 187,
        label: "AsIfkstDzfORmPiWOL",
        type: "occlusion"
    });
    const vAnuJnBJm = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "kRUeGJIYfjIjP",
        size: {
            width: 3335,
            height: 2161,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const oXAdxkRXmLEhWAeZC = vAnuJnBJm.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "gHtZScWdkqp"
    });
    const MjkyXOl = PdmBoUunGIAKR.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7291183259478495,
                g: 1.916791759837116,
                b: 1.8080411308264452,
                a: 1.6496060464777742
            },
            loadOp: "load",
            storeOp: "store",
            view: oXAdxkRXmLEhWAeZC
        }],
        label: "EZwSNdJueoDGyLjzJ",
        maxDrawCount: 2425237319,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    const WNotq = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: DbxblPJPWkzMMuzrP,
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
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "WqAGMjDNlFAgrWJ",
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
            module: qgxHQxhpvTfaFOlB
        }
    });
    MjkyXOl.setPipeline(WNotq);
    MjkyXOl.draw(10);
    const VeCRqLVGwLSdhSIPW = zRFjJXxxetMQrDlTMO.features
    const kQuiGoHgdhquvpKcMLH = YyeboGqCUPv.label
    const yKUseiRNWCY = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: zzcSzyojYIwptcHk
        },
        label: "RGfIUgZQjIxfMuI",
        layout: "auto"
    });
    const rtizwiF = AfmqzbYLWatchhgB.info
    const EKxcVTKbxtrjzK = zRFjJXxxetMQrDlTMO.features
    const XYSJlTQlUOKZhyd = IYWpYnd.label
    const NRxDmYqsEFKbNWnwH = MWKXXkPLvyMQD.info
    MoIrlBY.submit([SBRwTQONDBDYlBKO]);
    const twIAkuEEPHodVQR = ZcWXtpmOZccj.beginComputePass({
        label: "PQMPBFpQqMNoBibGMfmY"
    });
    twIAkuEEPHodVQR.setPipeline(dMntVMG);
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, imWufGNthbitEPzfQxQN);
    const eDoQcI = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "dMntVMG.bindGroup",
        layout: dMntVMG.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const jJLgXrDiEbDKtTVbQo = zRFjJXxxetMQrDlTMO.label
    const hNYxo = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fRsnsVsrHLnf
        },
        label: "rgtduChGzWJuVUCFDCQJ",
        layout: "auto"
    });
    const ELjejdfuZHxIiUB = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "vertex",
        code: cOTNYOtprf
    });
    const aVIlwcYP = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "jqqjWbNbraGtI"
    });
    const poXsQdJaqpaMJS = zRFjJXxxetMQrDlTMO.limits
    twIAkuEEPHodVQR.end();
    MjkyXOl.draw(8);
    const jtHBjKQHn = aVIlwcYP.beginComputePass({
        label: "MTijuArVMmxhwsZJ"
    });
    const DkynQoaxTGNvQsAhv = jtHBjKQHn.label
    const IXvXaMRZIoiXQjYrLyWE = wlvPMb.label
    jtHBjKQHn.end();
    const ELIzLANxIOjMlR = MWKXXkPLvyMQD.isFallbackAdapter
    const gxYwXpWXPWLTTtd = ZcWXtpmOZccj.beginComputePass({
        label: "DjVtXrB"
    });
    gxYwXpWXPWLTTtd.setPipeline(hNYxo);
    const JsgUIxFO = dMntVMG.label
    const YqEugVZCYqqllRpdbjr = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "fragment",
        code: MSHyhaGCvkk
    });
    const BMYbwbb = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8snorm",
        label: "AVWEYGuHOp",
        size: {
            width: 678,
            height: 590,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["r8snorm"]
    });
    const HgObVKcrST = dMntVMG.label
    const lyfbZMmSBl = rYCpIwbyM.count
    const GhpfVb = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "uOUJaMjfUJ"
    });
    const czWVbndkbMz = aVIlwcYP.beginComputePass({
        label: "SEAxUjQeeKUHDYeolQaQ"
    });
    const vnyhBwEY = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "NpVNZRAknhPiO",
        size: {
            width: 286,
            height: 363,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8snorm"]
    });
    const jkMoDuD = IYWpYnd.label
    MjkyXOl.end();
    const ZhmXyHewy = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: VTUdFYwTMEC,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "gfKiuXeTnzSczzvPe",
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
            module: ELjejdfuZHxIiUB
        }
    });
    const mNscnEl = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: zzcSzyojYIwptcHk
        },
        label: "mVAJJSSAVKBziu",
        layout: "auto"
    });
    const zpsCrlqVOAwre = zRFjJXxxetMQrDlTMO.features
    const YGXFT = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "gLslFpOpIPpuTCGhRsMX",
        mappedAtCreation: false,
        size: 39963132,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT
    });
    const bGhcYTB = zRFjJXxxetMQrDlTMO.label
    const hRIlyXyNLcWMzFwZn = lNqAyscjQsGDpBdFab.type
    const rRhxaqoLr = zRFjJXxxetMQrDlTMO.label
    const qImNITDTYhd = GhpfVb.beginComputePass({
        label: "xlXlRvxQQqdtwrWJ"
    });
    MoIrlBY.submit([eiQPHIaiGgVqSK]);
    const rrgIcrkuxVAGLwkr = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "TIRFKoQoMP",
        size: {
            width: 565,
            height: 131,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const OZcRhOHmotP = rrgIcrkuxVAGLwkr.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgba16float",
        label: "ejwnpzRZmvKBpyxNYk"
    });
    const bfsGiuCykAGzqHw = PdmBoUunGIAKR.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8679402005056585,
                g: 0.6277752870505076,
                b: 1.2452372014051256,
                a: 1.77319849645494
            },
            loadOp: "clear",
            storeOp: "store",
            view: OZcRhOHmotP,
            depthSlice: 0
        }],
        label: "GLKNZDTVlMcIsF",
        maxDrawCount: 3042535233,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    bfsGiuCykAGzqHw.setPipeline(wlvPMb);
    bfsGiuCykAGzqHw.draw(7);
    const HpXXWQsILDuz = hNYxo.getBindGroupLayout(0);
    const iJNIKKNSZOTIXEh = mNscnEl.label
    const iqhholDQxJRuJMws = await navigator.gpu.getPreferredCanvasFormat();
    const PkkCBqqoI = qImNITDTYhd.label
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, lZHPUcwPfRANvOiIib);
    const hvfrKx = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "yKUseiRNWCY.bindGroup",
        layout: yKUseiRNWCY.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    bfsGiuCykAGzqHw.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const FamqJtKBIgOkiLEthZKu = ZhmXyHewy.label
    const tUSsCC = bfsGiuCykAGzqHw.label
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 8, ceGzs);
    const JbQsl = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "vertex",
        code: ZgMVEOyXa
    });
    const XaeoETImZKJmMslLC = MoIrlBY.label
    const TgIWdQFUdAcmZrkLCcPj = lNqAyscjQsGDpBdFab.label
    const BOnXSB = hNYxo.getBindGroupLayout(0);
    bfsGiuCykAGzqHw.setVertexBuffer(0, tibKRelIHFIoakYgD);
    qImNITDTYhd.setPipeline(yKUseiRNWCY);
    const GfPvGC = zRFjJXxxetMQrDlTMO.features
    const ZpEwimsjLaBb = yKUseiRNWCY.getBindGroupLayout(0);
    const BTUCdBO = zRFjJXxxetMQrDlTMO.limits
    const UBUyiKEfCabQeBb = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "qofwbMKMgjUzkpT",
        size: {
            width: 186,
            height: 942,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16uint"]
    });
    qImNITDTYhd.setBindGroup(0, hvfrKx);
    bfsGiuCykAGzqHw.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const IrRtRglNbIeGCaM = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "CUUakWGneZOM",
        mappedAtCreation: true,
        size: 246454516,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    qImNITDTYhd.end();
    const LlTkEAhfczCxTde = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fRsnsVsrHLnf
        },
        label: "mvdfG",
        layout: "auto"
    });
    czWVbndkbMz.setPipeline(LlTkEAhfczCxTde);
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, pzmxZOxMSSGHgPqgf);
    const KEWqEoXo = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "LlTkEAhfczCxTde.bindGroup",
        layout: LlTkEAhfczCxTde.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    czWVbndkbMz.setBindGroup(0, KEWqEoXo);
    czWVbndkbMz.dispatchWorkgroups(205, 212, 8);
    const tmgbKOgRvlJ = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "fragment",
        code: DtROaNfzSJDPWDTV
    });
    const vXEkadyZSBeLyrx = ZhmXyHewy.label
    const zsVKgGaiYswV = LlTkEAhfczCxTde.getBindGroupLayout(0);
    const RJUnOIpIkDsGcVhw = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    bfsGiuCykAGzqHw.end();
    const lcVQj = PdmBoUunGIAKR.finish();
    gxYwXpWXPWLTTtd.end();
    const wKmhBKbFea = ZcWXtpmOZccj.finish();
    const YXwWlaMnXtPs = hNYxo.getBindGroupLayout(0);
    const HffcSwuqRfWdbp = MWKXXkPLvyMQD.isFallbackAdapter
    const AITqVzSaFSiSuTJgO = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "HYZHPJmsUT"
    });
    const zZBFHylfxxk = lNqAyscjQsGDpBdFab.type
    const IbwVaqyqBllqyw = mNscnEl.getBindGroupLayout(0);
    const LUSUc = RJUnOIpIkDsGcVhw.limits
    const ObezsSuFKIwPqYZGExTr = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "zuUXV",
        size: {
            width: 1463,
            height: 2338,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const VbPZFQzBzE = ObezsSuFKIwPqYZGExTr.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "bgra8unorm",
        label: "CjXqSMKyD"
    });
    const kbGoOrKrVGYyDBczmsF = AITqVzSaFSiSuTJgO.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2907618428297725,
                g: 0.815471675204557,
                b: 0.4283187828004935,
                a: 1.1289150442263574
            },
            loadOp: "load",
            storeOp: "store",
            view: VbPZFQzBzE
        }],
        label: "MeIURiSbLe",
        maxDrawCount: 2403802052,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    const AfDWKFMmsamD = kbGoOrKrVGYyDBczmsF.label
    const ahaXuRG = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "dAgWIstVCEuuSrhnIrC",
        size: {
            width: 39,
            height: 485,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const EgytiTHTAZRalKM = IYWpYnd.label
    kbGoOrKrVGYyDBczmsF.end();
    const aOvwOkfHKlFJnDhOJXvI = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 4004,
        label: "EesavKxe",
        type: "occlusion"
    });
    czWVbndkbMz.setBindGroup(0, KEWqEoXo);
    czWVbndkbMz.setPipeline(yKUseiRNWCY);
    const cHhsX = OZcRhOHmotP.label
    const JQCqMJxSasvv = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8uint",
        label: "lPEWH",
        size: {
            width: 281,
            height: 578,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8uint"]
    });
    const sYuRIUcNvAgZ = AfmqzbYLWatchhgB.features
    const tTpxtE = GhpfVb.beginComputePass({
        label: "rUNkDMmjxjjJjthMAVC"
    });
    const zCMtQPIyDNYABnRiAo = nQffPpSVyWldFiKj.info
    const oQMbYvOufpE = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "CKpqmSwsuN",
        mappedAtCreation: false,
        size: 172844248,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    });
    const gzwSuaudsvlM = AfmqzbYLWatchhgB.info
    const LFqqEaLJzPJFkskA = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "arEiVxDef",
        size: {
            width: 904,
            height: 652,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const OtaQIVrvuZmQ = LFqqEaLJzPJFkskA.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg8unorm",
        label: "bWeqlFAKzQFBkzLA"
    });
    const XJJyaikxYOdXndSZR = AITqVzSaFSiSuTJgO.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7666065941434732,
                g: 1.9179558750666996,
                b: 0.6893632978879394,
                a: 0.898981344912076
            },
            loadOp: "load",
            storeOp: "store",
            view: OtaQIVrvuZmQ,
            depthSlice: 4
        }],
        label: "Cwgwxrgxtrk",
        maxDrawCount: 32373447,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    XJJyaikxYOdXndSZR.end();
    const RRHfQCInePLQy = MoIrlBY.label
    const GHyvuhcVtv = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, ZxiNjBAC);
    const LOzaOozS = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "yKUseiRNWCY.bindGroup",
        layout: yKUseiRNWCY.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const YyEKQRIxbjbexjIAhoWC = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "RGsNQRbyn",
        size: {
            width: 3168,
            height: 3236,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const oJkbTzZpROtIPO = YyEKQRIxbjbexjIAhoWC.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "CtqyqQQsgAoLos"
    });
    const nJQSLVLLSwyEBxXM = AITqVzSaFSiSuTJgO.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.797768483548934,
                g: 0.6381145972159221,
                b: 1.2209820128926068,
                a: 1.5698263666208414
            },
            loadOp: "clear",
            storeOp: "store",
            view: oJkbTzZpROtIPO
        }],
        label: "hSkDhQJG",
        maxDrawCount: 977452630,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    nJQSLVLLSwyEBxXM.end();
    const YdyyfeeEf = zRFjJXxxetMQrDlTMO.queue
    const qdnByEsHzlan = czWVbndkbMz.label
    const yaAZcBhJ = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "lVpaNEqFTvpwE",
        size: {
            width: 794,
            height: 180,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const TVHcgCONzYRyg = yaAZcBhJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg8unorm",
        label: "pyJliGanvT"
    });
    const ilJtPkNJJv = AITqVzSaFSiSuTJgO.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9040553781420788,
                g: 1.7415595876424461,
                b: 0.6554523522603841,
                a: 0.3313360450512006
            },
            loadOp: "clear",
            storeOp: "discard",
            view: TVHcgCONzYRyg,
            depthSlice: 0
        }],
        label: "NbGkHVefxMeTekuFRXIC",
        maxDrawCount: 4151633619,
        occlusionQuerySet: rYCpIwbyM
    });
    const cyBdFigMpznuK = ilJtPkNJJv.label
    tTpxtE.end();
    const tZsdKaWixJN = GhpfVb.finish();
    const MoAtELZrotvCVESmr = MWKXXkPLvyMQD.info
    ilJtPkNJJv.setVertexBuffer(0, oQMbYvOufpE);
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, QjzUAiWam);
    const vskdtWeCdabttveWGE = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "hNYxo.bindGroup",
        layout: hNYxo.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const CqkKSb = lNqAyscjQsGDpBdFab.count
    czWVbndkbMz.setBindGroup(0, LOzaOozS);
    const wdIiLSEiqCwVrpEMToR = GHyvuhcVtv.limits
    const ZvLiSNnzZ = ilJtPkNJJv.label
    const mUofRtOWIIuGWpPlqV = zRFjJXxxetMQrDlTMO.features
    ilJtPkNJJv.end();
    const ImEaJWIU = AITqVzSaFSiSuTJgO.finish();
    const enINIPKcMvwwEz = zRFjJXxxetMQrDlTMO.limits
    const KEtAFrCTjMVDPV = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "tMMImpLzfMJggXdSTpa"
    });
    const pVUPLfD = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "ZPggNsOdkMyOujlx",
        size: {
            width: 3134,
            height: 2465,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const fNYhCwuLhDje = pVUPLfD.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "qffQYUJpIVibXEZNX"
    });
    const tMbxnAFUInIFdSNaiylf = KEtAFrCTjMVDPV.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.05615984088769266,
                g: 0.41736491695065947,
                b: 1.2499753332254542,
                a: 1.2079094568253441
            },
            loadOp: "load",
            storeOp: "store",
            view: fNYhCwuLhDje
        }],
        label: "DfeLX",
        maxDrawCount: 165096611,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    tMbxnAFUInIFdSNaiylf.end();
    const IIPCVWnYdR = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "jaBisz"
    });
    const BOKgishQmtcu = lNqAyscjQsGDpBdFab.type
    const jSFevJerFEExLrQf = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "XRita"
    });
    const SRgjCBGVDavOrAGNvkoX = lNqAyscjQsGDpBdFab.label
    const BMbXEFN = zRFjJXxxetMQrDlTMO.label
    const mhLRmjOpoZptUd = zRFjJXxxetMQrDlTMO.features
    const OBmMMmoHxSInLpd = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 117,
        label: "TtYHCHKteasytU",
        type: "occlusion"
    });
    const TfCSXPFuQTLEu = await navigator.gpu.getPreferredCanvasFormat();
    const yHKSHHm = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "PnGlGOB",
        size: {
            width: 105,
            height: 64,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const vKwDPPR = yHKSHHm.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "ewjJL"
    });
    const yXmMylTJQrqzXNCLBrh = IIPCVWnYdR.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3630022996476028,
                g: 0.1433848530806734,
                b: 1.4061171994788613,
                a: 0.26073412741826885
            },
            loadOp: "clear",
            storeOp: "discard",
            view: vKwDPPR,
            depthSlice: 7
        }],
        label: "IzaFZrE",
        maxDrawCount: 4056208141,
        occlusionQuerySet: OBmMMmoHxSInLpd
    });
    const vOXAwtota = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: tmgbKOgRvlJ,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "KRSAQReuPNsZCCrBN",
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
            module: JbQsl
        }
    });
    yXmMylTJQrqzXNCLBrh.setPipeline(vOXAwtota);
    const CXbxiO = yXmMylTJQrqzXNCLBrh.label
    const csLQNcxHlgOsDfHnu = yXmMylTJQrqzXNCLBrh.label
    const FfJTzxIgmUPRlJBnu = zRFjJXxxetMQrDlTMO.limits
    const DslwWggdkXjgYGiY = zRFjJXxxetMQrDlTMO.limits
    const NvomLvsbD = LlTkEAhfczCxTde.label
    const ibxVOBoPaS = yXmMylTJQrqzXNCLBrh.label
    const CKMSUCaqeDgjTDWoib = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 3485,
        label: "TNFhveHxwcoiQUIsDGWW",
        type: "occlusion"
    });
    const zIKVrgwMHOakI = dMntVMG.label
    const QJLgKbfjtaZ = YdyyfeeEf.label
    const RyWMrisTtsnfuQLeD = OBmMMmoHxSInLpd.type
    const IoWHeXeK = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: YqEugVZCYqqllRpdbjr,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "src-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "WYzSNBnv",
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
            module: JbQsl
        }
    });
    yXmMylTJQrqzXNCLBrh.draw(10);
    const DKqYljOGEIXErWbUAYg = dMntVMG.label
    const dIkXHTJKHOrnXPapC = czWVbndkbMz.label
    const fjUfZjp = yXmMylTJQrqzXNCLBrh.label
    czWVbndkbMz.end();
    const mfEmBLTZiaYoKr = rYCpIwbyM.label
    yXmMylTJQrqzXNCLBrh.draw(6);
    const ASWUU = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 862,
        label: "iYiBhqMuVAliWVG",
        type: "occlusion"
    });
    const qBwNtm = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    yXmMylTJQrqzXNCLBrh.setPipeline(vOXAwtota);
    const UIBkcycIWx = nQffPpSVyWldFiKj.isFallbackAdapter
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, CWoecXBprjXqyaRfc);
    const JbyQuXGFlmlstMLacB = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "LlTkEAhfczCxTde.bindGroup",
        layout: LlTkEAhfczCxTde.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const WuXgaSah = yKUseiRNWCY.getBindGroupLayout(0);
    const wuMhjPd = ASWUU.type
    const OLjICQOyMEbRprOEzAFU = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "tTpUlUjm"
    });
    const iDNwR = rYCpIwbyM.count
    const dIDQnJT = KEtAFrCTjMVDPV.finish();
    const VoOQvRZIUyjQSIxTkdHY = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "RjtqEqzamWtxCfJvdi",
        size: {
            width: 614,
            height: 274,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const dQEEHkQI = VoOQvRZIUyjQSIxTkdHY.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "uSfDGjabAYn"
    });
    const CTPiD = OLjICQOyMEbRprOEzAFU.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5196523112997804,
                g: 0.664171521406905,
                b: 0.5419976561752742,
                a: 0.2312758438572784
            },
            loadOp: "load",
            storeOp: "store",
            view: dQEEHkQI,
            depthSlice: 5
        }],
        label: "ZBtCaCfktwKCAU",
        maxDrawCount: 1687341324,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    const ltXlfGJvPaNKjV = mNscnEl.label
    const XUFumVNJryQFcbWrjX = IYWpYnd.label
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 0, hgmtHT);
    const YIdrzkjj = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "LlTkEAhfczCxTde.bindGroup",
        layout: LlTkEAhfczCxTde.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const iaLRcxhtfiihsogNRV = iAJpEeqJJrfVBN.type
    const uPaRvKMlWK = jSFevJerFEExLrQf.beginComputePass({
        label: "ldGRrfrkKjKutD"
    });
    uPaRvKMlWK.end();
    const sRiBfVUCiuQRmNywyalK = jSFevJerFEExLrQf.beginComputePass({
        label: "SwIku"
    });
    sRiBfVUCiuQRmNywyalK.setBindGroup(0, CzaYDynkZvuP);
    const kQXTxzTfByn = MoIrlBY.label
    const uOezLcFUKjoiRH = iAJpEeqJJrfVBN.type
    const SmnrYpy = jSFevJerFEExLrQf.label
    const yMkfZtWmKbBJ = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "wUseqJbzuIWYkcABV",
        size: {
            width: 857,
            height: 75,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const yZTDzatcW = yMkfZtWmKbBJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "r16float",
        label: "kizrHzL"
    });
    const aTdmiBla = aVIlwcYP.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9161022173972317,
                g: 1.804805978954957,
                b: 0.2607731691062358,
                a: 0.5919492462378995
            },
            loadOp: "clear",
            storeOp: "store",
            view: yZTDzatcW,
            depthSlice: 0
        }],
        label: "VGGmJjBLUEX",
        maxDrawCount: 2814687384,
        occlusionQuerySet: rYCpIwbyM
    });
    const uEPYFef = navigator.gpu.wgslLanguageFeatures
    const QdNaR = nQffPpSVyWldFiKj.limits
    const DOjsovLsXCQ = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: YqEugVZCYqqllRpdbjr,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "Xxvps",
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
            module: JbQsl
        }
    });
    aTdmiBla.setPipeline(DOjsovLsXCQ);
    aTdmiBla.draw(5);
    aTdmiBla.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const DxwXCggeHssOQSN = sRiBfVUCiuQRmNywyalK.label
    yXmMylTJQrqzXNCLBrh.setPipeline(vOXAwtota);
    const XPkVoBkIFLzi = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32float",
        label: "eBSRnquoVMKwyWQ",
        size: {
            width: 288,
            height: 519,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["r32float"]
    });
    const ckJJLKSDAHWXbYrB = aTdmiBla.label
    const tUbzTcCt = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "ZVshADQhKZmVC"
    });
    const mTnzhgzUYjGIhIr = AfmqzbYLWatchhgB.isFallbackAdapter
    const rWKQx = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "XIHidRtrHPTYRtgMLY"
    });
    const LANVX = zRFjJXxxetMQrDlTMO.features
    const KsAOLiwyvhpdmCF = tUbzTcCt.finish();
    const VbWsOOZSclXYFxxL = MWKXXkPLvyMQD.features
    const LoYKlKV = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "lbvPat",
        mappedAtCreation: false,
        size: 91454832,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE
    });
    const hnUyzCsJ = aOvwOkfHKlFJnDhOJXvI.label
    const aDUXaJTJkWHzZiI = jSFevJerFEExLrQf.label
    const JRodQhR = navigator.gpu.wgslLanguageFeatures
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 0, VswdAHssvfRXEPsfhnUG);
    const xTvRgrTKz = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "dMntVMG.bindGroup",
        layout: dMntVMG.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    YdyyfeeEf.writeBuffer(jCfOHeGkVXyLIaP, 0, bSetkmJE);
    const MzCJPwxgKTteBYeqdhE = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "LlTkEAhfczCxTde.bindGroup",
        layout: LlTkEAhfczCxTde.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, muepHZJLr);
    const euIfMgOcjmJYupALmUL = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "LlTkEAhfczCxTde.bindGroup",
        layout: LlTkEAhfczCxTde.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const mMngRypfRxM = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "EjAmSWfdgOwkIbRb",
        mappedAtCreation: false,
        size: 11975912,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE
    });
    const iBVCW = yKUseiRNWCY.getBindGroupLayout(0);
    const QYCieGfZKmj = navigator.gpu.wgslLanguageFeatures
    const QvTDtpPdaIYyiMccpB = zRFjJXxxetMQrDlTMO.label
    const yOJoT = CTPiD.label
    MoIrlBY.writeBuffer(mMngRypfRxM, 10998056, WElSWFvVbl);
    const fxmQWjzBWBLlBGC = qBwNtm.limits
    const nMBvOGAkBsKHccUdOr = MWKXXkPLvyMQD.info
    const gRCPBZOqfITxql = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "osLQUsrqHgcf",
        mappedAtCreation: false,
        size: 188429704,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM
    });
    yXmMylTJQrqzXNCLBrh.setVertexBuffer(0, oQMbYvOufpE);
    const qjEfbymnrB = aOvwOkfHKlFJnDhOJXvI.type
    const KucznFzxyIHM = zRFjJXxxetMQrDlTMO.limits
    const tqxFfwRBUY = MoIrlBY.label
    const XDvVyNVpQuJHhYrom = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: YqEugVZCYqqllRpdbjr,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "ekMvSrOnonAY",
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
            module: ELjejdfuZHxIiUB
        }
    });
    const uLlEOgFuYX = zUtwNvk.label
    CTPiD.end();
    const HNnCVfQaAMYV = IYWpYnd.label
    const zsFOtbN = aTdmiBla.label
    yXmMylTJQrqzXNCLBrh.setVertexBuffer(0, oQMbYvOufpE);
    yXmMylTJQrqzXNCLBrh.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const DKpGBgLwONsU = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "yffcK"
    });
    const nHvtKjXWcxlYvvZfy = dMntVMG.label
    const PmCTHBKROpA = sRiBfVUCiuQRmNywyalK.label
    const vnCfmCJquYmjt = XPkVoBkIFLzi.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "r32float",
        label: "mUHUUScYYQW"
    });
    const miMuNKmLQ = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "rRheCXpXDX",
        mappedAtCreation: true,
        size: 261124900,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE
    });
    const fAbmStYowWvWPfoxPeX = rrgIcrkuxVAGLwkr.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 8,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "QJeyyDzn"
    });
    const LhajAiQLhVaraio = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: DbxblPJPWkzMMuzrP,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "RsqQhuGiDWZj",
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
            module: ELjejdfuZHxIiUB
        }
    });
    const WSHSeynO = rWKQx.finish();
    sRiBfVUCiuQRmNywyalK.setBindGroup(0, vskdtWeCdabttveWGE);
    sRiBfVUCiuQRmNywyalK.setPipeline(mNscnEl);
    YdyyfeeEf.submit([wKmhBKbFea]);
    YdyyfeeEf.writeBuffer(mMngRypfRxM, 6634592, KuUdDLmDdfEcKXRlwd);
    const ZblNtpuCzuXl = OLjICQOyMEbRprOEzAFU.beginComputePass({
        label: "EoUFqHyPqhKf"
    });
    const NqFxVCMxvwnSY = YyeboGqCUPv.label
    const XEQNUhKlIgkUfVyUl = MWKXXkPLvyMQD.isFallbackAdapter
    const tiEYzvAsBw = yaAZcBhJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 4,
        format: "rg8unorm",
        label: "zLoWVi"
    });
    const CqblVCLJLBvMb = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "fragment",
        code: wlMBISnUuKSYuQJ
    });
    sRiBfVUCiuQRmNywyalK.end();
    const FBhZSbKpqftDqKPB = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "ansXMLNh",
        size: {
            width: 598,
            height: 589,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const HIrAFXGWQyOAsjdCZW = FBhZSbKpqftDqKPB.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rg16float",
        label: "ZSCBZHmuQJtlPwsnFO"
    });
    const ggUcTNPYY = DKpGBgLwONsU.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.16120015613137073,
                g: 1.2473417540642162,
                b: 1.006728998947575,
                a: 1.1972606040483673
            },
            loadOp: "clear",
            storeOp: "store",
            view: HIrAFXGWQyOAsjdCZW,
            depthSlice: 0
        }],
        label: "rMemBgRc",
        maxDrawCount: 3869879965,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    const jVmWAgK = iAJpEeqJJrfVBN.label
    const JzDfGBimPdMjTCyKFnP = CKMSUCaqeDgjTDWoib.type
    const hBlbFp = jSFevJerFEExLrQf.beginComputePass({
        label: "HvJWUTWEuthVm"
    });
    ZblNtpuCzuXl.setPipeline(LlTkEAhfczCxTde);
    const bMhTxriNPZMpozhmwDI = TVHcgCONzYRyg.label
    const kvURFNtBRnzW = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "pXpFDkCGhbTZqFj"
    });
    const KKfvdfBbgwRNlJDrhr = kvURFNtBRnzW.beginComputePass({
        label: "sSLKDPflsIhybJnP"
    });
    const arxqOwVvZcbwsQeQCc = yKUseiRNWCY.getBindGroupLayout(0);
    ggUcTNPYY.end();
    const aowtmonZwuKLEMMEcivh = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "ZhoAVGpmsbQfRCB",
        size: {
            width: 512,
            height: 1023,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    YdyyfeeEf.submit([lcVQj]);
    KKfvdfBbgwRNlJDrhr.setPipeline(yKUseiRNWCY);
    KKfvdfBbgwRNlJDrhr.setBindGroup(0, hvfrKx);
    KKfvdfBbgwRNlJDrhr.dispatchWorkgroups(127, 232, 19);
    const nzFAPFBYY = yKUseiRNWCY.getBindGroupLayout(0);
    hBlbFp.end();
    const ZnPthQETDuEltKMn = jSFevJerFEExLrQf.finish();
    const ifnisZ = zRFjJXxxetMQrDlTMO.limits
    yXmMylTJQrqzXNCLBrh.setVertexBuffer(0, mMngRypfRxM);
    const EUiMemJOYDbPssVDquH = ZrrVEZEESUEqoBUnNUlg.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg32float",
        label: "FHmPhB"
    });
    const qymhoZPoPUubiNbewl = DOjsovLsXCQ.label
    const yhSPMzlTbMXE = navigator.gpu.wgslLanguageFeatures
    const CEHgqxbmIkliDQsR = zRFjJXxxetMQrDlTMO.limits
    const mtNuPkvACrNJv = zRFjJXxxetMQrDlTMO.label
    yXmMylTJQrqzXNCLBrh.setVertexBuffer(0, mMngRypfRxM);
    const hCJSUmhPcMqS = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "vertex",
        code: ieyyXxz
    });
    MoIrlBY.submit([KsAOLiwyvhpdmCF]);
    const DDtAsjFnHx = PzwJIAPdqukEoawCp.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "DnGVhNJEijTSphF"
    });
    const DlbCmwMJoRW = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "KDAeZDluSHrPR",
        mappedAtCreation: false,
        size: 257914352,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const gNyBL = DKpGBgLwONsU.beginComputePass({
        label: "cpACoF"
    });
    const FfPxJOUWPXjoUPDnWjA = yKUseiRNWCY.label
    gNyBL.setPipeline(LlTkEAhfczCxTde);
    gNyBL.setBindGroup(0, KEWqEoXo);
    gNyBL.dispatchWorkgroups(254, 64, 18);
    const DCHwDIIlawVuYt = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "oWDuGYxZ"
    });
    const GZTNwOXAoIsHYsjFm = DCHwDIIlawVuYt.beginComputePass({
        label: "SAQXykxzBSXUGztB"
    });
    const EIBRrnVsWgBDDQE = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 2218,
        label: "vYnPtBVmXJDGHF",
        type: "occlusion"
    });
    const ONHlPSuolcSqGLZTtV = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "compute",
        code: ZnjpoMzuyWszi
    });
    const zADTcRiqB = lNqAyscjQsGDpBdFab.count
    const NsosITnKrTdZlEmZTIsu = AfmqzbYLWatchhgB.limits
    const rZITXsVwxeSi = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "KqjMznrylQBzbGCRt",
        mappedAtCreation: false,
        size: 124064444,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const bUXNlxLebiHZsWqODitq = LFqqEaLJzPJFkskA.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "cJndqlMbifyx"
    });
    const qQzQOamuxcInVsjHD = RJUnOIpIkDsGcVhw.limits
    const GSWsv = rrgIcrkuxVAGLwkr.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "QDubXtcAGtAGsPqUxc"
    });
    KKfvdfBbgwRNlJDrhr.setBindGroup(0, LOzaOozS);
    const cAMkJ = qBwNtm.isFallbackAdapter
    const wQnOlwuXjyIFMLBQ = aOvwOkfHKlFJnDhOJXvI.label
    yXmMylTJQrqzXNCLBrh.draw(2);
    const qwwnQ = fNYhCwuLhDje.label
    const PLRIowYhwsFVGWAcIaeh = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "AbipkyO"
    });
    const nKRnWuzL = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "xGjQCW",
        size: {
            width: 3484,
            height: 496,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const AVYTThHqbxfTwht = nKRnWuzL.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "JlMsGaNFUJaJ"
    });
    const icMpLx = PLRIowYhwsFVGWAcIaeh.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2333252108286374,
                g: 0.2557318673518476,
                b: 0.9473748383539919,
                a: 0.578538230731565
            },
            loadOp: "clear",
            storeOp: "store",
            view: AVYTThHqbxfTwht
        }],
        label: "DtVyNqPvSvOOVJXDBh",
        maxDrawCount: 3615477461,
        occlusionQuerySet: iAJpEeqJJrfVBN
    });
    const mrWtCxnumoYgMFKSBB = icMpLx.label
    const dARELWYBztJmh = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fRsnsVsrHLnf
        },
        label: "SAiUkoWUMJXkBLo",
        layout: "auto"
    });
    const elBUfTAuMkAJXV = ZrrVEZEESUEqoBUnNUlg.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg32float",
        label: "IFCvVxLvOPp"
    });
    const oZZeyWNNsBA = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: DbxblPJPWkzMMuzrP,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-constant"
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
        label: "kpxLzeQKrWI",
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
            module: ELjejdfuZHxIiUB
        }
    });
    const oDRZT = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "depth24plus-stencil8",
        label: "bdKeUNNALemBorXn",
        size: {
            width: 2240,
            height: 1334,
            depthOrArrayLayers: 6
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus-stencil8"]
    });
    YdyyfeeEf.writeBuffer(mMngRypfRxM, 9549940, dPiCTEjMXhS);
    yXmMylTJQrqzXNCLBrh.draw(10);
    const LkRjMfSdDEnMc = hNYxo.getBindGroupLayout(0);
    const lhSxfz = zRFjJXxxetMQrDlTMO.label
    MoIrlBY.submit([dIDQnJT]);
    const FFektPl = RJUnOIpIkDsGcVhw.isFallbackAdapter
    const ncERrHYvRLI = nQffPpSVyWldFiKj.limits
    const UfQCqMghDhN = await navigator.gpu.getPreferredCanvasFormat();
    const AEFdk = IYWpYnd.label
    const LHhKjLauhvVNBSYsYCS = GHyvuhcVtv.limits
    const DUjSTaiMXHgAF = qBwNtm.features
    const QDAoCjCxNq = aOvwOkfHKlFJnDhOJXvI.count
    yXmMylTJQrqzXNCLBrh.draw(10);
    const CsGLCyUkuUFm = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "jcsCesdFEqYPnohropZc"
    });
    const DfDHIFuALQtOJfM = CsGLCyUkuUFm.beginComputePass({
        label: "ffNVIInAUInrkwRfyI"
    });
    const gdVtzjnyoDnbfmzuXDU = await navigator.gpu.getPreferredCanvasFormat();
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 24, SWgdR);
    const MGhTI = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "nvOFEospWBpOWyC"
    });
    const hqHKpirs = GHyvuhcVtv.info
    const LwwbDIzUEWnr = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "CHoIYCJnKQXycTG",
        size: {
            width: 805,
            height: 512,
            depthOrArrayLayers: 37
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const nKYgEAWbp = LwwbDIzUEWnr.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "NlrQsyPpJtgNEmzHMXg"
    });
    const kUxfVMumLvIfUUG = MGhTI.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9862151545537083,
                g: 1.537586245401572,
                b: 1.4681461017457396,
                a: 1.6837092714506432
            },
            loadOp: "clear",
            storeOp: "discard",
            view: nKYgEAWbp,
            depthSlice: 6
        }],
        label: "iyfkuDBJ",
        maxDrawCount: 2838436965,
        occlusionQuerySet: ASWUU
    });
    GZTNwOXAoIsHYsjFm.setPipeline(hNYxo);
    GZTNwOXAoIsHYsjFm.setBindGroup(0, vskdtWeCdabttveWGE);
    GZTNwOXAoIsHYsjFm.dispatchWorkgroups(54, 226, 8);
    const AeArONbiEhG = MWKXXkPLvyMQD.limits
    const Tzzofv = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "vertex",
        code: ZfdGS
    });
    const BHKZJUiOMI = kvURFNtBRnzW.label
    const qssAnIRPFvzDeuAVPzOV = zUtwNvk.label
    GZTNwOXAoIsHYsjFm.setBindGroup(0, vskdtWeCdabttveWGE);
    YdyyfeeEf.writeBuffer(jCfOHeGkVXyLIaP, 0, duuCmboDqqGgx);
    const oUsXVcdYfUUYsrUbg = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "hNYxo.bindGroup",
        layout: hNYxo.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const ZzTMFgDBYW = RJUnOIpIkDsGcVhw.features
    const RXWCnIiRmjFfVjp = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sIEpResNPtyQqSwktCy = OBmMMmoHxSInLpd.label
    const eOmaIBNhAHTrgGwv = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "SbvdtWyzInVOZRM"
    });
    const eyqhfiAcssayCGlcK = eOmaIBNhAHTrgGwv.beginComputePass({
        label: "oeHHtwxhQdPR"
    });
    const FLBdgTGgc = DOjsovLsXCQ.label
    DfDHIFuALQtOJfM.end();
    const ouwrkmVLL = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: tmgbKOgRvlJ,
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
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "UrMzUpcptLufrx",
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
            module: JbQsl
        }
    });
    YdyyfeeEf.submit([tZsdKaWixJN]);
    const smPebz = CsGLCyUkuUFm.beginComputePass({
        label: "EiXqQxmIRKb"
    });
    const CrtmO = AfmqzbYLWatchhgB.features
    eyqhfiAcssayCGlcK.setPipeline(dMntVMG);
    eyqhfiAcssayCGlcK.setBindGroup(0, eDoQcI);
    eyqhfiAcssayCGlcK.dispatchWorkgroups(212, 224, 11);
    const gBolrLqHNfsKnvIbZvr = TVHcgCONzYRyg.label
    const omTnCf = ASWUU.label
    const PMvQYzhrCgmCyFEQ = YdyyfeeEf.label
    const ZOBnTexbcnSiHX = zRFjJXxxetMQrDlTMO.limits
    const TRovutdoqZ = aOvwOkfHKlFJnDhOJXvI.count
    icMpLx.setPipeline(WNotq);
    icMpLx.draw(9);
    const ArCUOxdydpaSpvrUSP = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "QDBtkJXymrYkdXDdDlcn",
        mappedAtCreation: true,
        size: 80657536,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const UFQigczPBCbY = ASWUU.type
    ZblNtpuCzuXl.setBindGroup(0, euIfMgOcjmJYupALmUL);
    const jSaxkbrNmHsn = ZblNtpuCzuXl.label
    aTdmiBla.setVertexBuffer(0, tibKRelIHFIoakYgD);
    const WbmcxhPwoCJwDV = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 3053,
        label: "XxCpH",
        type: "occlusion"
    });
    const BemmdBZRryjPV = zRFjJXxxetMQrDlTMO.limits
    const mlUoYMmaRbAUBm = kvURFNtBRnzW.label
    const MFYaBK = zRFjJXxxetMQrDlTMO.features
    ZblNtpuCzuXl.end();
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 12, aGpCrPeMdF);
    KKfvdfBbgwRNlJDrhr.setBindGroup(0, hvfrKx);
    YdyyfeeEf.submit([WSHSeynO]);
    icMpLx.setPipeline(ZhmXyHewy);
    eyqhfiAcssayCGlcK.setBindGroup(0, CzaYDynkZvuP);
    eyqhfiAcssayCGlcK.setPipeline(dARELWYBztJmh);
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 0, XxMGjjWh);
    const AtaraVC = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "dARELWYBztJmh.bindGroup",
        layout: dARELWYBztJmh.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    eyqhfiAcssayCGlcK.setBindGroup(0, AtaraVC);
    eyqhfiAcssayCGlcK.dispatchWorkgroups(103, 139, 10);
    kUxfVMumLvIfUUG.setVertexBuffer(0, DlbCmwMJoRW);
    const yUEGguUgRRRoT = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "compute",
        code: MnpbptbrkWmmHFLk
    });
    const MxWkTjPOdpU = iAJpEeqJJrfVBN.count
    const hhtxf = await navigator.gpu.getPreferredCanvasFormat();
    const fnHhQZcibwLGhIYrdfDi = dMntVMG.label
    MoIrlBY.writeBuffer(DlbCmwMJoRW, 92402784, NdMWtjvrTBVXDJtKFMiE);
    const FfwKrH = await navigator.gpu.getPreferredCanvasFormat();
    const xuVSmZDl = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8uint",
        label: "TjAjaaFEdVafo",
        size: {
            width: 2614,
            height: 3504,
            depthOrArrayLayers: 55
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8uint"]
    });
    const JpSTccyYxyuVbYr = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: fRsnsVsrHLnf
        },
        label: "aELABtmvrSwi",
        layout: "auto"
    });
    const MhcUtzxkVZfNMMrNRFwV = rYCpIwbyM.count
    smPebz.setPipeline(mNscnEl);
    const XDUwJJccrFVFrIzHkvz = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "Icimn",
        mappedAtCreation: false,
        size: 12208080,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE
    });
    eyqhfiAcssayCGlcK.end();
    const GiNLCIlzDuWYlEKlw = dMntVMG.label
    const dUShQfAqglGngkMpMH = zRFjJXxxetMQrDlTMO.features
    const ZIPHFZ = RXWCnIiRmjFfVjp.features
    const DnGPR = IYWpYnd.label
    const qHzSGIX = zRFjJXxxetMQrDlTMO.queue
    const McWVBIO = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "hXZgzZoPBZrSNDFJDx",
        mappedAtCreation: false,
        size: 183829080,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM
    });
    const FTBgb = await navigator.gpu.getPreferredCanvasFormat();
    const jTdAWEIRqg = dQEEHkQI.label
    const VsahhysrVtLaayQejK = qBwNtm.features
    const LqQPrXsABpSUxtO = MWKXXkPLvyMQD.limits
    const JkucskJHhuSUIZisj = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "OnJfmDMgvOAAaqnraf",
        size: {
            width: 2490,
            height: 2191,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const jdShKggsMwxVkxEhJE = JkucskJHhuSUIZisj.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "uvcYhr"
    });
    const bbImy = OLjICQOyMEbRprOEzAFU.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.08448117085077222,
                g: 0.47761380242381457,
                b: 0.3061809518813581,
                a: 0.3902762958659387
            },
            loadOp: "clear",
            storeOp: "store",
            view: jdShKggsMwxVkxEhJE
        }],
        label: "ltkbaE",
        maxDrawCount: 474460410,
        occlusionQuerySet: EIBRrnVsWgBDDQE
    });
    const TcVvuuOxhdp = MWKXXkPLvyMQD.isFallbackAdapter
    const lGsFGRF = zRFjJXxxetMQrDlTMO.label
    const DxQCVeCfwK = zRFjJXxxetMQrDlTMO.queue
    const wqdae = zRFjJXxxetMQrDlTMO.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: zzcSzyojYIwptcHk
        },
        label: "zCfPeICYkmBMaqM",
        layout: "auto"
    });
    const bgQlKXm = eOmaIBNhAHTrgGwv.beginComputePass({
        label: "kxcuqnTHxZFzZEF"
    });
    aTdmiBla.end();
    const KgsiNlUjPgEo = aVIlwcYP.finish();
    const tqfeYrHEAkedobrWl = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "ZKZBMKPMmKrrDv"
    });
    const SujYmifwhgGJTWwLddr = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "RJehreezfzlvO",
        size: {
            width: 3533,
            height: 2586,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const AfHiUXszmYNjZOGuDdgM = SujYmifwhgGJTWwLddr.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "QZPxHolTFOkFojWionJ"
    });
    const ARQGoVzdcpCsPdYQqUU = tqfeYrHEAkedobrWl.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.370773127281812,
                g: 1.4258313904428157,
                b: 1.159445020425499,
                a: 1.751865765026224
            },
            loadOp: "clear",
            storeOp: "store",
            view: AfHiUXszmYNjZOGuDdgM
        }],
        label: "jggCcgvDZdQo",
        maxDrawCount: 4265956217,
        occlusionQuerySet: CKMSUCaqeDgjTDWoib
    });
    const LqLTlzIRISyym = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 2268,
        label: "iqITwviMpfpnTSonb",
        type: "occlusion"
    });
    const pByvHqjES = GHyvuhcVtv.limits
    const EpndVIcqktfa = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "EMlKqEPudg"
    });
    const rcuWDjnkgWGDKkSCrK = EpndVIcqktfa.beginComputePass({
        label: "RtzMiczWNhXv"
    });
    ARQGoVzdcpCsPdYQqUU.end();
    const ndBkaNs = tqfeYrHEAkedobrWl.finish();
    smPebz.setPipeline(hNYxo);
    smPebz.setBindGroup(0, vskdtWeCdabttveWGE);
    smPebz.dispatchWorkgroups(234, 96, 36);
    yXmMylTJQrqzXNCLBrh.setPipeline(vOXAwtota);
    IYWpYnd.writeBuffer(jCfOHeGkVXyLIaP, 0, mJsgCrhvnmtHZoa);
    const RVhVz = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "JpSTccyYxyuVbYr.bindGroup",
        layout: JpSTccyYxyuVbYr.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    const COIoFWsbY = CKMSUCaqeDgjTDWoib.label
    const trAIu = GHyvuhcVtv.limits
    const eaPERAhuYP = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: YqEugVZCYqqllRpdbjr,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "IUjIuNvqSRzDZhFqLD",
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
            module: Tzzofv
        }
    });
    YdyyfeeEf.writeBuffer(jCfOHeGkVXyLIaP, 0, DRCZUgMvGZj);
    const BOYLToeuDhfB = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "mNscnEl.bindGroup",
        layout: mNscnEl.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    kUxfVMumLvIfUUG.setPipeline(zUtwNvk);
    kUxfVMumLvIfUUG.draw(5);
    kUxfVMumLvIfUUG.draw(9);
    const jLSqCsVr = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "IsYjs",
        size: {
            width: 1005,
            height: 376,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    IYWpYnd.submit([ZnPthQETDuEltKMn]);
    MoIrlBY.writeBuffer(jCfOHeGkVXyLIaP, 0, GLPnQVLrvDNIOYHst);
    const XQIcRwildxyoxeC = zRFjJXxxetMQrDlTMO.createBindGroup({
        label: "dARELWYBztJmh.bindGroup",
        layout: dARELWYBztJmh.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: jCfOHeGkVXyLIaP
            }
        }, {
            binding: 1,
            resource: {
                buffer: axiME
            }
        }]
    });
    qHzSGIX.writeBuffer(DlbCmwMJoRW, 124161204, rJLSS);
    const LgerQjPiznuAx = zRFjJXxxetMQrDlTMO.queue
    const rXtvGunQ = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "qsxBDPveLlHZL",
        mappedAtCreation: true,
        size: 156093428,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE
    });
    const wBGBCFGbajVAKbEtQK = zRFjJXxxetMQrDlTMO.createCommandEncoder({
        label: "uJvIfRTSMBXyD"
    });
    const jNWAMTpzcqp = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "VYIQUsfrDPWuFO",
        size: {
            width: 986,
            height: 144,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const QgqzZBrdayXGhHivU = jNWAMTpzcqp.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "iMCiWCqYxVouEcYMBsg"
    });
    const bxvqDpwlMqfmhzjEnc = wBGBCFGbajVAKbEtQK.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.864346425451875,
                g: 1.3295423834585807,
                b: 0.024290758834107695,
                a: 1.0441890296401992
            },
            loadOp: "clear",
            storeOp: "store",
            view: QgqzZBrdayXGhHivU,
            depthSlice: 18
        }],
        label: "BQVwtSrWociduvfm",
        maxDrawCount: 736490367,
        occlusionQuerySet: lNqAyscjQsGDpBdFab
    });
    const NKkgVFFkS = OBmMMmoHxSInLpd.count
    const ORndQYunIJPqW = zRFjJXxxetMQrDlTMO.queue
    const PWKqdapzhWNyaSZ = await navigator.gpu.getPreferredCanvasFormat();
    const SqofYAZMR = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: CqblVCLJLBvMb,
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
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "qrvSnTQlwukuCi",
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
            module: ELjejdfuZHxIiUB
        }
    });
    bbImy.setPipeline(SqofYAZMR);
    bbImy.draw(1);
    bgQlKXm.setPipeline(dMntVMG);
    const gCcDwjaEAhC = zRFjJXxxetMQrDlTMO.label
    const GySGctFgMSOouAcHCleA = navigator.gpu.wgslLanguageFeatures
    const FBPJUbmqraNn = iAJpEeqJJrfVBN.count
    const DYhSmMZbSFe = zRFjJXxxetMQrDlTMO.features
    const xohrEKPj = ORndQYunIJPqW.label
    smPebz.setBindGroup(0, oUsXVcdYfUUYsrUbg);
    smPebz.setPipeline(mNscnEl);
    smPebz.setBindGroup(0, BOYLToeuDhfB);
    smPebz.dispatchWorkgroups(70, 175, 53);
    smPebz.setBindGroup(0, BOYLToeuDhfB);
    smPebz.setPipeline(dMntVMG);
    const icuvnABZVEgHokpkbxco = yaAZcBhJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "uYoGc"
    });
    DxQCVeCfwK.submit([ndBkaNs]);
    const MHfRdRKOrLbsoQTVGllW = zRFjJXxxetMQrDlTMO.createShaderModule({
        label: "fragment",
        code: xOLhxb
    });
    DxQCVeCfwK.submit([KgsiNlUjPgEo]);
    const HupfAgJDJqPSJbaoTAH = vOXAwtota.label
    const hGypc = zRFjJXxxetMQrDlTMO.createBuffer({
        label: "PLRzSJMFoXxTRHnk",
        mappedAtCreation: true,
        size: 129534928,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    });
    const QUdCYxi = oZZeyWNNsBA.label
    const lkZaAsRJHWJXA = lNqAyscjQsGDpBdFab.count
    const HwksmoT = LhajAiQLhVaraio.label
    const BARzCvvVTu = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 2096,
        label: "gGutjcGmXHQcri",
        type: "occlusion"
    });
    const iQMXArHTwO = zRFjJXxxetMQrDlTMO.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: CqblVCLJLBvMb,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "JFZiABPnnfTOWqAcv",
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
            module: ELjejdfuZHxIiUB
        }
    });
    bbImy.end();
    const PTKYczsfzMo = CsGLCyUkuUFm.label
    const ekEKQRcBMtEh = zRFjJXxxetMQrDlTMO.limits
    const nYeSQVyoAJrQgwAXWx = RJUnOIpIkDsGcVhw.limits
    yXmMylTJQrqzXNCLBrh.end();
    GZTNwOXAoIsHYsjFm.setBindGroup(0, oUsXVcdYfUUYsrUbg);
    GZTNwOXAoIsHYsjFm.setPipeline(hNYxo);
    const KvBPCCcJB = OLjICQOyMEbRprOEzAFU.beginComputePass({
        label: "ZTKTfMN"
    });
    const xVtlWczaVeaih = MWKXXkPLvyMQD.features
    const mPsAUZmYeIKgKQCAd = WbmcxhPwoCJwDV.type
    const NiacucILBlm = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 270,
        label: "iclWirTXdwoKwdabesg",
        type: "occlusion"
    });
    const LwzcZXHpnNTgbbDnl = yKUseiRNWCY.getBindGroupLayout(0);
    bxvqDpwlMqfmhzjEnc.setPipeline(vOXAwtota);
    bxvqDpwlMqfmhzjEnc.draw(3);
    const wvUZYbR = await navigator.gpu.getPreferredCanvasFormat();
    const HECdeJMgjeD = mNscnEl.getBindGroupLayout(0);
    bgQlKXm.setPipeline(yKUseiRNWCY);
    const FcusuttRPuogrUnG = zRFjJXxxetMQrDlTMO.queue
    bxvqDpwlMqfmhzjEnc.setVertexBuffer(0, rZITXsVwxeSi);
    const ontZU = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 3473,
        label: "nOLPGlOIzLjaPQrzVcZ",
        type: "occlusion"
    });
    const UwyFAlhyvqTKVFdY = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 420,
        label: "BBKuAkAksdBjRyCpsznM",
        type: "occlusion"
    });
    KvBPCCcJB.setBindGroup(0, JbyQuXGFlmlstMLacB);
    gNyBL.end();
    const JmPkdHGzWCdMljrxc = qBwNtm.limits
    const QREYXuikeBdCJ = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "kBFvVim",
        size: {
            width: 830,
            height: 845,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const ldvjUPRIIQJ = QREYXuikeBdCJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "DIMUNBHmFGrCLJnqN"
    });
    const BsOqbAGRrrA = DKpGBgLwONsU.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9499148663407408,
                g: 1.2339868806092333,
                b: 1.2177965332456415,
                a: 1.428231239021251
            },
            loadOp: "clear",
            storeOp: "discard",
            view: ldvjUPRIIQJ,
            depthSlice: 15
        }],
        label: "OeEvnJe",
        maxDrawCount: 600044831,
        occlusionQuerySet: WbmcxhPwoCJwDV
    });
    const taciO = ORndQYunIJPqW.label
    bgQlKXm.setBindGroup(0, LOzaOozS);
    kUxfVMumLvIfUUG.end();
    MoIrlBY.submit([ImEaJWIU]);
    const uSgpWTVTacjNRVXt = IYWpYnd.label
    const NUFJQFFYbnAtrztNHzpH = KvBPCCcJB.label
    const lroZtjsqXxwn = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 2321,
        label: "VTlTHvaRsiYueuvzo",
        type: "occlusion"
    });
    const WyyaoGVpOSLgsmRVzIGh = smPebz.label
    BsOqbAGRrrA.end();
    const QEotjVXTqkBQqB = DKpGBgLwONsU.finish();
    const iwECBNomkJQsdO = CKMSUCaqeDgjTDWoib.label
    const lkaNYKs = DxQCVeCfwK.label
    const gGtRNcqzNaQM = await navigator.gpu.getPreferredCanvasFormat();
    bgQlKXm.setBindGroup(0, hvfrKx);
    const XlfFLllfwHgPY = QgqzZBrdayXGhHivU.label
    const qwbnBDCBHrcxvO = GHyvuhcVtv.isFallbackAdapter
    const TMuWlbjNTKrYCHOfx = zRFjJXxxetMQrDlTMO.createQuerySet({
        count: 157,
        label: "agXiQGgvI",
        type: "occlusion"
    });
    ORndQYunIJPqW.submit([QEotjVXTqkBQqB]);
    const nkuVm = AfmqzbYLWatchhgB.features
    const tOBtoSObplxTSajJwV = rcuWDjnkgWGDKkSCrK.label
    KKfvdfBbgwRNlJDrhr.setBindGroup(0, LOzaOozS);
    KKfvdfBbgwRNlJDrhr.setPipeline(hNYxo);
    const ihHjznEgluXnxx = zRFjJXxxetMQrDlTMO.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2uint",
        label: "vDfiCKEze",
        size: {
            width: 2930,
            height: 1817,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2uint"]
    });
    const AQLmGYGJAFRqUtGEpOF = zRFjJXxxetMQrDlTMO.limits
    icMpLx.setPipeline(WNotq);
    DxQCVeCfwK.writeBuffer(McWVBIO, 38268744, MTOJAKzxNVjTSv);
    const oqEdiFKmD = IoWHeXeK.label
    const SXSkvCMxnPaoOQ = navigator.gpu.wgslLanguageFeatures
    const GQLSxo = IIPCVWnYdR.finish();
    const VLVEUPDdO = RJUnOIpIkDsGcVhw.isFallbackAdapter
    icMpLx.end();
    const mlOzFeKbA = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    qHzSGIX.submit([GQLSxo]);

}
main().catch(console.error);