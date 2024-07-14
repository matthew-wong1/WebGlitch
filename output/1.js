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
const yeacKEAEKcBaxfnWUZxK = new Int8Array([-2635, -2690, 5128, 9331, -3411, 4661, -9126, -8792, -1077, 3365, -3022, -4651, 3557, 786, -2787, -2665, 5048, -1622, -8478, 4638, -8406, -7625, 7903, 533, -1080, 7299, 3553, -9051, -3089, 6735, 5301, 2021, 4386, 1785, -3447, -4806, 2534, 7637, -6546, 5014, -9090, 5217, -7161, -7677, 8413, -286, 7043, 4561, 8646, -3788, -8288, -4974, 6694, -9160, -2208, 4620, -1199, 8278, -3558, 3556, 2182, 3409, -3844, -4366, 343, -7858, -8545, 1296, -6693, -2883, 3649, 6996, 6308, -4883, 922, 3339, 6424, -4814, 7625, -9752, 1034, -229, -9688, -1356, -7216, 4537, -8279, 2770, 1744, -8942, -4083, 9523, -895, -6031, -6009, -8772, -5418, -3146, -1767, -6835, -6105, -9395, -8665, -5257, -7643, -1221, 6560, -8079, -6857, -5596, 1319, 7643, -3881, -2368, 7069, -3536, 5633, 5816, -7465, -4411, 5718, 6842, 9788, -8088, 2709, -3502, -2495, -6105, 4870, -8965, -8771, 5299, 8754, 5014, -5637, 3002, -2095, -855, 4726, -8523, -8890, -5778, -4675, 3482, -7161, -7887, 6821, -2498, 2338, 939, -3056, 9017, -3529, 2651, 8595, 7203, 6742, 9698, 4069, 5714, -7612, -214, 3210, 6180, -5697, -10, -6212, 1526, -6045, -9384, -6315, 7469, 378, 5993, 1666, 3810, 532, -973, 9257, 1497, -408, 8997, 8433, -8325, 7149, -2005, 9174, 204, 5855, 2596, 16, -5003, -1899, -110, 2794, 419, 5911, 1195, 7880, -1591, -2819, -7953, -8551, -4750, -7926, -1088, 290, 8458, 1358, -3159, 4900, -5590, -5794, 7161, -9787, 5503, 8652, 2971, -8377, -2214, 6293, 9618, 9764, 1526, -6716, -7808, 2667, 7326, -4600, -4604, -3710, 8161, 6371, 1529, 399, 1257, -5477, 3033, -497, -6522, 3062, -6617, -5212, -2090, -6877, 673, 9164, -3643, 8160, -8940, -4525, -7661, 6695, 5194, 2140, 5902, 7708, -9063, 9964, -620, 713, 2721, 5324, -8686, 4138, -4030, -1570, -9923, 3325, 7051, 3244, -2864, -8878, -3175, 6619, 4221, 8493, -7336, 8174, -2111, 5833, 5919, 8322, 4048, -8885, 3747, -750, -6966, 5461, 7514, -6062, -541, 7038, 4455, -2680, -1220, 5534, -9841, -6848, 1856, -8558, -5634, -601, -7077, -9704, 6077, 2953, -3870, -2890, -3627, 2048, -5981, 7601, 8908, 4817, -3858, -3184, 4324, -7213, 7660, 304, 3709, 6967, -3425, -2238, 3342, -3980, -2041, -9473, -3109, -3437, 7220, -1404, -960, 7528, 3330, 7888, -5239, -8994, -3921, -190, -9078, -5629, 8609, -5749, 9451, -6976, 1999, -6655, 1999, -8749, -4858, -8323, -623, -3676, 8277, -1717, -3362, -3950, -8021, -7785, 5176, -3738, -3758, 1595, -3705, -7261, -1675, 2687, 1109, -7592, 5525, -831, -510, -9522, 1193, -9200, -9901, -5147, -5014, -5940, 4865, 6243, -4756, -8143, -5268, -8837, 9924, 4534, -3442, 9777, 3477, 8909, -7911, 1096, 3537, 5368, -1037, -3809, 9476, -4366, 6786, -3600, -2889, 4605, 3606, -9995, -4045, 3326, 4179, -3377, 1305, 797, -4548, -570, -4391, 7746, 537, 5845, -533, -9594, -8626, -4503, 7784, -4331, -2201, -378, 3677, 7491, -1289, -5470, -6117, -2686, -7664, 915, -6616, -5605, 9600, -8188, 6982, -9035, 3025, -9056, -5334, -8315, 2871, 4869, 3772, -4356, -8240, -6196, -4373, 2680, -8877, 9512, 4147])
const uhokO = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const NaBnAOjHWjH = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const FGiqQHxKOcRhJlJEqMzi = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const PweoiZvYWfMaAOhEAd = new Float32Array([-8312, -5612, 4337, -4268, -7525, -6183, 2628, 8539, 9892, -2978, 787, 8963, 5281, 9809, 8225, 9748, -2216, -8185, 9265, -6882, -9380, -8860, 8073, -7488, 1241, 3219, 2539, -2789, 5614, -1881, 6877, 1385, 2650, 6095, -2645, 865, 2386, -2508, 7715, 3151, -8015, 6584, -6622, -5120, -7431, 7748, -8469, -9794, -5324, 8227, -1400, 4530, 5005, -1915, -8571, 8456, 3740, -7579, -3502, 6428, 2617, -9538, 6882, -5409, -892, -6635, -9339, -5034, -9073, -5655, -5189, -1950, 6620, -2583, -8205, 7033, 6462, -3427, -9649, 6219, -5738, -7073, -9372, 1895, -3163, 7587, 1982, -8641, 6107, -2453, -7171, -7888, -2349, 1249, 299, 8675, -6224, 2354, -934, -2402, -3461, -792, 4226, -4953, 6614, 1464, -9772, -8652, 7489, 9478, -5760, -8582, 4675, -8192, -2482, 5085, 3142, -8581, 8742, -6004, 6366, -8996, 2399, 2434, -9515, -1004, -7520, 1947, 5828, -904, -7839, 3036, 4047, -9002, -3212, 5569, -8893, 4790, 6407, -6459, 6345, -571, 8002, -1124, 3299, 2078, 1726, -9987, 7433, -7122, 2006, -5293, 9405])
const GBDjqy = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const PKMIqHu = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const JBhiujIajIycMt = new Float32Array([9301, -4851, -7280, -8910, 8198, 9893, 7865, 2920, 2240, -9069, 3130, -9905, -884, -5688, 1191, 8847, -6411, 5019, 2904, -2087, -2089, 3372, -7135, -8179, -8858, -4677, 3115, 8320, -6418, -9284, -4424, -2213, 3405, 8706, 9957, -5021, 3232, -3388, -730, 6337, -862, -7368, -320, 5166, -9817, 5431, -8817, -5222, 890, 2869, 6310, 8043, -8964, 2338, 2888, 953, -2860, -8715, -9806, -3293, 7979, 5426, 183, -3532, 4277, -1480, -6745, 9229, 41, 3715, -3020, 2232, -6124, -379, 8253, -8101, 4458, -7659, 3323, -588, 686, -1600, 3588, 6219, 5802, 160, 4935, 1901, 9887, 9597, 2942, 291, -9746, 7738, 338, 9898, 9005, 5743, -1061, 1934, 5000, 5972, 9834, -2610, 1668, -7765, -9071, -8450, -9855, 1267, -4364, 3791, 2877, -8602, -7247, 7802, -365, -7546, -8948, -645, -6798, 6635, 840, -7386, -2367, -7139, 2135, -7346, -4165, -326, -3254, -9261, -7252, 9654, -8171, -3202, -1097, 7454, 7027, 3944, 7027, -7084, 4584, -4983, -7643, -6901, 7612, -3295, 4432, 7920, 6784, 9317, 8445, -3817, 7345, -8371, 6817, -2189, 4527, 916, 1501, 8819, -8416, 8413, 9771, 9611, 1000, -822, -4553, -7005, 5950, -2010, -3361, -7101, 4762, 3715, -999, -7374, 3847, 4917, -7656, 1597, 8949, 4624, -4418, 5856, -1678, -3531, 5331, 7520, -2913, 6144, -8995, -2474, -3087, 8823, 7247, 61, 921, 1275, 6537, -23, -6297, 3489, 7972, -7935, 1641, -3791, -2821, -9243, -1997, -1175, -2266, 4518, -1038, 5379, -2046, -1514, 3551, 8634, 7082, 8413, -3718, 2458, 6128, 3347, -8395, -1330, 3881, -1620, -9794, 4602, 8695, 7385, -9038, -682, -3908, -216, -6602, -9004, -6341, 6855, -5975, -2303, 2917, -7254, 8214, 6150, -5836, 1019, 8510, 617, 1210, -4701, 6059, -7871, 1259, -6072, -6931, 792, -7105, -2982, 3470, 9553, -9411, -16, -5441, 2908, 9769, 4838, -3973, -4947, 7375, 8473, 6408, -1975, 9828, -7195, 8751, -5404, -9133, 8132, -2396, 6630, -885, 7596, 4390, -5945, 4018, -4669, 1306, 9258, -7047, -3672, -9947, 7318, 6518, -5664, 8216, 5868, 2257, 5537, 5906, -5810, -1046, 7608, 7177, 4902, 5727, 7898, -1189, -3368, -8453, 6853, 6989, 757, -7555, -9054, 1577, 114, 859, -3376, 5734, -2564, 6960, -7041, -6952, 6143, -5396, -362, -1917, -6312, -1472, 4636, 3315, -4184, 971, -5477, 5770, -3284, -8910, 8881, -5402, 5569, 8959, 7533, 2077, -4189, -9807, -6704, 9627, -6884, 2353, -8058, 1550, 8095, -313, -9902, -8796, -4138, -1919, 5270, 9611, 8811, 546, 4, -6581, 7135, -4839, -2718, 3907, -1731, 156, 1388, 2016, -4524, 540, 1857, -12, 2188, 8148, -4794, -5455, 6591, -29, -2561, 3751, 8548, -4170, 8853, 4851, -3472, -7778, -9375, 867, 551, 6654, 5214, -2961, 8083, -6859, -6267, 8471, 9534, 7371, -6027, 7200])
const OyhuRgvXTm = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const rbIAukmIvjNMBv = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const cbKfAHdVthxHghBtTmA = new Float32Array([9869, -4359, -6386, -3923, -8040, 4357, 173, -6103, 263, 5669, -1856, 8463, 9598, 5522, 444, 1665, 8479, -4462, -1775, -2720, -4524, 9903, 1199, 4621, -6078, 7455, 4964, 955, 452, 6803, 342, -453, -9095, 5521, -446, -7604, 5862, -7767, -7499, -701, 318, 9315, -9538, 1342, 4064, 8624, 2994, 2910, -2827, -4963, -1725, 4712, 6730, -4345, 7021, 1218, 1387, -3432, 5757, -514, -6826, -8232, 5030, -5387, -4296, 7248, -2827, 219, -688, 5161, 1963, 5118, 689, 2976, -8661, -149, 7676, -3851, -7666, -2547, -6445, -2952, -7096, -5297, -7295, 9210, -4471, -629, 9984, 2021, -7990, -5926, 9624, -4013, 2370, 437, 6196, 2779, -162, -5529, -6973, 1929, -2544, -2234, -5061, 9332, -7719, -1235, 7612, 4660, -7529, 9117, -4593, 227, -1066, -8971, -7506, 765, -6614, 6061, -117, 4813, 8225, -2180, -6460, -4574, -7516, 6942, 5137, -8369, 7788, 7590, 9020, -7267, 9050, -961, -3036, 8995, 1797, -368, 3503, 4129, 7413, -397, -4263, 7858, -4746, -6740, -2904, 4609, 1479, -8862, -141, -4567, -7580, 2683, 8354, 4987, -2521, -223, 3425, 860, -2053, 7228, 3155, -261, 6270, -1514, 4363, -7511, -8830, -1273, 3162, -5824, -4973, 5412, 946, 188, -2851, -2141, -6659, 7274, 899, -2974, 441, 285, 479, 5436, 5050, -6997, -637, 8259, -8361, -1217, -7286, 1596, -4952, 4413, 4041, -7054, 3403, -2668, 3564, -3465, 8369, 5611, 8735, 9293, 8935, 4850, -2604, -7165, 392, -7420, 7869, 9409, -2611, 6107, 4375, 4345, 6981, -2331, 2430, -5307, -4898, -9137, -1350, 6645, -4485, -3277, 7235, 3680, 4199, -8623, -9589, -8195, -6727, 526, 2619, 8791, -8006, -7921, 6446, 175, 6468, 1917, 167, -9004, -7760, -1542, -9847, -8999, 7165, 6101, -6626, 6733, -3119, -9043, -7017, -1446, 9964, 8775, 6127, 8107, -3894, 6374, -6528, 2255, 6363, 5612, 7176, 249, -3163, -5489, 6811, 3460, 6979, -9066, 7387, -2315, 1780, 1925, -2739, 4962, -8641, 437, -4368, -5162, -804, -4353, -917, -779, 1672, -2250, 2086, -9453, 3544, -2210, 4400, 9840, 6434, 1226, -3156, -5206, 7097, -2163, 506, -4655, 6615, -844, -8243, 1495, -5179, -1897, 9228, -9024, -9164, -8306, -3666, -2118, -715, 4186, -6998, -7820, -2483, 9578, 9303, -5000, -4475, -2823, 4857, 7559, -3923, 8807, 7253, -3708, -8207, -9080, 1841, 9309, 2840, 3901, -7658, 7074, 5355, -738, -2193, 3224, 5119, -731, 6559, 6422, 9720, 5231, -1935, -8483, 8476, -4385, -8620, -752, 5856, -7811, 9271, 4775, 7316, -5964, 7967, 2441, -1394, -9053, -450, 9855, 781, -3566, 3984, -1289, 4158, 8158, -135, -892, 6513, -5535, 5365, 5282, 4332, -1028, -2048, 7262, -7432, -2497, -9745, 6352, 9359, 2874, 6728, 127, -4551, -491, 5869, -8441, 4267, 3863, -9669, -1845, 3476, -825, 1942, 7414, 8179, 8870, -7167, -4598, 8549, -1491, 1771, 7285, 3957, -2333, -9593, 2843, 1419, -8445, 1617, -5307, 1330, 5606, -5649, -3329, 4586, -1725, 8248, 7407, -9774, 8680, -2944, -6180, 7008, 7450, 7334, 5706, -1852, 6118, -2194, 8845, -7497, 3201, -2750, -687, -3858, 9946, -7082, 9957, 7862, 2238, -1551, 6781, -1866, 5863, 981, -40, -8388, 4320, -6283, -90, 6140, 3569, -3002, 8388, -168, 4866, 6177, 165, 7910, -4398, -7644, -9750, -3565, 3719, 8515, 463, -2526, 2592, -8194, 613])
const WsisGGGVQBhkLDjG = new Uint8Array([6072, 1625, 5771, 6807, -6488, 8520, 4862, -5495, -6195, 1791, -7695, -5169, 1087, 7067, -3401, -8572, -1268, 9089, 1681, 9824, -7620, -1761, 9685, -8111, 5859, 1740, -8602, -3612, 1776, 5289, -5505, -7047, -4633, -6232, -4869, -609, 2086, 7944, -3683, 9964, 9113, 4131, 3380, 6525, 5303, -6451, 5734, -800, 4905, 2216, 6253, -7948, -1414, 3113, -6936, 7643, -4073, 1605, 1150, 7923, -4187, 2025, -3663, -170, -1894, -3382, 9319, 194, 5511, -3161, -13, -5886, -7984, 1724, -5599, 1495, 4755, -124, 8664, -3664, -7382, -5381, 7588, -3369, -3090, -5428, 2785, -1813, 5615, -2283, 6723, -9027, -4959, 8766, 374, 2986, 887, 6489, 6891, -9124, -2323, -8072, 5164, 6638, 1606, 4201, 514, -7941, -5070, -8738, 1214, -4196, 6139, -7895, 3620, 8422, 5770, 3349, 3312, 315, -4727, 9149, -3768, 6738, 2616, -6759, -8120, -9596, 6848, -2687, -8989, 550, -8140, 5780, 8330, -8004, 3028, -8174, 1661, 3705])
const yMWiRGUaEvnOaidgWFO = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const XCWZATiiCNt = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const rSncUGboUyZ = new Float32Array([-5966, -4860, 7773, 2181, -537, -2092, -7573, -8019, -6407, -3000, -3672, 8247, -8443, 6560, -8279, 1825, -4052, 6139, -126, 4914, -252, 1324, 4917, -3976, -4809, -7402, 3963, -2540, 5217, 1554, -4403, -4108, -4681, -5603, -9896, 8789, 3081, 8707, -5279, -5290, -7414, -441, 4602, 9412, 118, -2511, 3261, 762, 5062, -8950, -4099, 56, -5678, 4885, -7520, 7211, 9669, -6631, -476, 5620, 2371, 1286, 612, -1910, -7775, -3228, 7792, -8123, -6217, -4044, 486, 8925, -6244, -1502, 4125, 53, 1608, 3834, -847, 2261, -4589, -3834, 2278, 8180, -5674, -1995, 4552, 2282, 50, -2547, 8849, -8811, 3194, 7836, 860, 3496, -5537, -8005, -8660, 5179, 6035, 6085, 5921, 9759, 2009, -1992, -6476, 5456, -1665, 6779, 605, -8132, 7252, 302, 5697, 3570, 7327, -7165, 168, 417, 5901, -4606, -7138, 6820, 2272, -4005, -684, -6080, -8943, -8479, 1368, -7446, 5430, 3701, -2101, -732, 211, -3622, 2395, -5863, -8888, -7544, 4702, 3236, -4793, -2055, -6097, -3431, -1664, -1179, 6527, 9596, -6264, -5646, 9831, 8211, -8099, 4974, 7842, -6353, -9388, 5432, 8674, -7318, 9289, -8899, 3965, 1040, -197, -1595, -8890, 6231, -7466, -4137, 6184, 4555, -148, 3446, 2477, -6102, 131, 2879, -8330, -8521, 7636, -1737, -374, -5852, 3554, 6668, 3359, -9932, -4934, -6129, -5572, 6123, -4761, 2540, -504, 6446, -2838, -489, -1191, 3258, 2386, 2731, -9015, -1559, -5483, 3610, 5332, 7756, -8086, 1414, -6722, 9451, 8278, 1423, 2598, 9681, 660, -5911, -4321, 9051, 9035, -1603, 3252, -9424, -5683, -484, -3548, 1156, 1079, 7837, 5397, 4651, -7614, -4380, -2872, -5874, -5915, -5759, -7586, 3231, 1445, -708, 4297, -408, 4847, 5077, 3938, -7330, -5445, -974, 7207, 8061, 2647, -9816, -8719, -4259, 5559, -6620, -3250, -3194, 9720, 6865, -3393, -9220, 7940, 5874, 9694, 5655, 7863, -9802, -2375, -5041, -8210])
const rivcsDR = new Float32Array([227, 8884, 4024, 6332, -1743, 7769, 3845, 9500, -3476, 3093, -5389, -8127, 3834, 3047, -5313, 5710, -5748, -6532, -948, 6762, 5292, 3184, -2537, 3656, -3680, -881, -2354, -3611, 3598, -3852, -7713, -9213, 9180, 1769, 1156, -9774, 7469, -6400, 3337, -8040, -8369, -2271, -8504, -7497, 1409, 9961, -6380, 7279, 571, -7915, 9631, -4575, -9878, -3270, 3979, 6254, 3266, 8501, -2075, -9554, 2030, 4652, 7653, 4668, 6229, -8536, -9239, -8370, 3708, 3964, 6802, -4979, -4616, 3092, -6511, -9160, -7553, 3409, 7431, 5583, 5835, 852, 8063, -5656, 298, 7691, -8721, 7258, 7718, -1899, -8013, 2898, -455, -4915, 9631, 8608, 1389, 2402, 7110, -8438, 7491, -5958, -4009, 8402, -1005, -288, 2730, -2713, 2983, 6105, -6827, 7085, -6207, -8792, 8911, 1779, 7456, 1466, -1369, -6610, -4740, -6256, 8505, 8256, 2332, -5992, -1471, 576, 9416, 8950, -9730, 6167, 7377, -5807, -3159, 6928, 3102, -7984, 5134, 6912, 7240, -9692, -9843, 4790, -3159, -6874, -3991, 2815, -5138, 3326, 7380, 7407, -9456, 2129, 9520, 6969, -8216, -4489, -2560, -5939, -482, 6574, 3596, -3608, 3843, -7693, 8440, 3422, 6557, -1666, 5745, 1858, 7589, 2104, 8871, -7312, -9213, -10000, -9594, 1575, -6385, 5290, -6896, -5574, -7614, -7560, 4728, 7765, 7329, 5343, 4413, 1047, 2341, 4347, -1658, 351, 6340, 4238, 5508, 48, 9872, 3129, -7650, -4573, 5066, -3052, 8445, -6978, 3532, -2448, -7693, 3885, -9041, -4148, 5110, -7811, -7752, -5508, -7508, -7508, -3103, -4277, 1456, 9546, -8803, 440, -6435, -5855, -427, 425, 669, 3934, 532, -3661, 3840, 3666, 9051, -2590, 1545, -2480, 4379, -2759, -7407, 7853, -3446, -721, -2311, 2211, 8882, 8040, 6433, -7927, 6451, -6610, -2662, -809, -3607, -1505, 7356, 5622, 4807, -5916, 1621, 8682, -3316, 48, -7130, 2358, 4010, 769, 2237, -3651, 9583, -3986, -5833, -5326, -1463, -8783, -3827, -1650, 7746, -6733, 8748, -5293, -1457, 2051, -5357, 2086, -7141, 9768, 555, 5432, -9136, -1386, 9487, 6673, -3123, 8310, 7232, 352, -9702, -5136, 6835, 3824, -6349, 1940, -9682, 7343, 6371, -8197, 9619, -10, 6829, -1032, -3451, 536, -6342, -5647, -9357, 8672, -510, -126, -4469, 8214, -8683, -2742, -4669, 8199, -6238, 832, -5649, 4341, -1704, -843, -8308, 1597, -792, 9919, -4299, 7268, 698, 8571, -7745, -8522, 8169, 6778, -2268, 9505, 2917, -1743, 7530, 2122, 4347, -8924, 5107, 8775, -6304, 1065, -5399, -3512, 6869, -2755, 5436, -7474, 316, 70, -9507, 3729, 2835, -9280, 5492, 9958, 210, 559, 1328, -4984, -2825, 538, -619, -6654, 1220, 9203, 7628, 2876, 5284, -2920, 2593, 8385, 8840, -899, -9114, -1595, -9498, 7546, -8415, -6293, 986, -8444, 4290, -7283, 1808, 7757, -1675, -1389, 2963, -1244, -2352])
const ExkqoXVwGBKebqd = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const LgBVVyZjkjJu = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const qDBFPWLjysqmUT = new Float32Array([5560, 8517, 1895, 28, -4484, 6915, 9349, 2606, 6033, -3007, 7365, -9249, 3793, 8146, 6326, -5114, 9251, -5589, -5843, 837, -2511, 9935, -8787, 4778, 9219, -8361, -2082, -1935, -3710, 850, 826, -8390, -7235, -6433, -2788, -1349, 7605, 6309, 5251, 9148, -4063, 5694, 4239, 8812, -5591, 914, 6639, -9574, -4677, 7034, -6417, -1868, 9660, -7649, -6837, 4365, -1942, -2603, -6764, -6452, 204, 2243, 8089, -413, 6398, 5414, -5796, -671, 9031, -6509, 7541, 1926, -2162, 3802, -937, -2054, 456, 4101, 7856, 1781, -9519, 856, -3605, 3962, 9768, 9710, 2690, -9678, -3348, 6506, -7408, 4862, -9234, -4157, 2055, -6520, 3344, -3450, -2163, 2531, -4411, 8736, 6747, 300, 6570, 5240, -4425, 843, -8899, -3541, 8337, 6816, -210, 2972, 1398, -9618, -5355, 6446, -2092, -4362, -3415, 4287, -7847, 2130, -2052, -4684, 8162, -6612, -4894, -6282, -7921, 3064, -6663, 5902, 108, 8789, -5075, -7107, 4306, -8199, 2268, -6176, 6170, -5994, -4684, -8191, 2085, -1142, 8589, -1122, -2526, -7245, -9355, 3985, -5632, 4286, 8863, 1605, 2916, -2752, -400, 7442, -5639, 6497, -6592, -3111, 1251, 424, -8019, -9755, -1356, -6216, 8448, -4508, 2276, 4086, -8397, -2172, -1013, 8053, -7197, -3719, -6564, 8050, -9052, 9072, 7593, -3936, -1273, 9152, 6767, -2470, -8835, 115, -9348, -2911, -7909, -1429, 8008, 1355, -8109, -4298, -9702, 415, -35, 6505, -8859, -2459, -1245, 5455, 9758, -2807, -915, 7580, -6250, 218, -9560, -4193, 9204, -9245, -3077, -8825, -149, 2734, 1104, -4318, -2540, 4449, 3847, -9645, -6704, 2045, -9870, -161, -6749, 820, 5912, -3915, -6164, -5769, -8939, -9091, 3718, 7119, -440, 3667, -5759, -5540, 3356, -1865, -9910, -597, -6511, 8417, -5671, -2610, -9636, 6940, -1590, 4014, -2724, -7168, 9966, -9347, -2353, -2115, 7109, -7801, 9031, 4549, -3650, 6744, -6763, 4978, -4937, 611, -726, 6281, 3950, 8025, -8620, 6310, -1090, -9122, 4440, 7169, 743, -9882, -2577, -9532, -1108, 3706, -4824, -2952, -5041, 912, 9908, 5132, 2893, 8735, -3023, -7601, -3745, 7744, -5250, 5623, -403, -3305, -6320, 7846, -1471, -6149, -6110, -9345, -9950, 9568, 2628, 8229, 4469, 7180, 9932, 4314, -9819, -1638, -9884, -22, 6533, -2926, -8475, 9917, 5454, -9210, 2276, -4424, 3520, -4751, -3342, 8114, 7336, -886, 5244, 7638, 4701, 7225, -1225, 6501, 194, 9042, 4638, -8829, -7074, -9652, -6111, 733, 467, 1505, 379, 4117, 5434, -1988, -7006, -3969, -4022, 3001, 9812, 6618, 5938, 4450, -6965, 807, -6469, 3875, 2168, 6367, 3925, -1107, -4984, -879, 1143, 5669, 6032, 4898, 1259, -9480, 1465, -3425, -8376, -5353, 16, -6499, 6806, -1160, 5788, -6136, -1430, 8928, -6056, 5686, 7307, 9546, -2991, 6341, 3699, 976, -3310, 8703])
const XUETrkYgBXBc = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const IFdKctlW = new Float32Array([-4975, -8788, -43, -3502, -7120, -1089, 5566, -8613, -6771, -7798, -4628, 6099, 3561, 8926, -1179, 4284, 347, 9516, 4078, 2965, 8529, -6737, 4273, 2489, 2820, 156, 9603, 2468, 3648, 6473, 1155, -9871, 3318, -5080, 3730, -689, 7527, -5401, 4508, 6578, 9373, -5996, 7826, 7966, 8024, -1540, -2855, -9474, 7112, 6492, 8725, -7685, 4639, 9434, -3573, 1203, -543, 2141, 6628, -8318, -8656, 5007, -6320, -5448, 2497, 7706, 2784, 6321, 3596, 4523, -784, -7368, -1447, -7749, 5135, -1294, -6682, 135, 5905, 2503, 7995, -81, -3194, 9555, 9563, -4664, -1521, -2233, -3726, 9212, 25, -4162, 3819, -2954, -3686, 1577, -8145, 635, -4243, 9734, -6315, 355, 1969, 6127, -7578, -1151, -6347, 7336, -7258, 514, -8766, 7599, 478, -9681, -2951, 6003, 223, -4382, -7046, 5906, -9477, 4532, -5330, -8599, 6901, -1555, 6712, -8864, 9402, 4889, 463, -7961, 4805, -6872, 3266, 751, 4451, 5265, 7229, 5223, 8727, -6191, 8366, 7177, 2157, -3098, 9087, 5527, -5900, -3171, -6983, -3135, 4543, -2178, 5609, 8566, 8631, -7984, -9969, 4626, -4780, -1344, 9966, -3282, -2012, -9780, -7732, 1733, -7231, 8116, 6384, 1873, -2825, 7033, 2931, -9620, -4930, -7708, -9570, 7353, -3160, 6315, 1653, 2202, -9182, -3105, -6184, -2981, 4948, 5255, -466, 6339, -8168, -122, -3308, 6826, -9411, 3528, 1875, -2585, -1683, 5197, 1057, 2011, -5791, -935, -5716, 8267, -1903, 7191, -1633, -1497, -2454, -8999, 2818, 4780, -8211, 7665, -4365, 344, -6769, -1869, -1376, -6961, -6097, 5544, 7610, 2852, -6883, 1600, 5194, 4487, 1824, -7572, 7848, -3693, 8313, 3635, 4346, -7290, -278, -3195, 5575, -4378, -3366, 4219, 1070, -9256, -3982, 8900, -4100, 9976, 7421, 9093, 9687, -3903, 5185, -830, -1387, -2709, 8754, 2718, 6881, -4047, 4007, 1486, -4064, 843, -7921, 1074, -1301, 8219, -7642, 4671, -974, 7583, -4676, 7767, -3109, 865, -3441, 7088, 1257])
const NtReZSgubgdPmVp = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const UbsoDWkfHRkOGD = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const iNeCiACijz = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const AVOtZ = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const JillrdfFHNfy = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const SORQwgpSRRpOpoqN = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const dmSTCFYW = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const hslisERa = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const KYXMHTd = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const KyEGvdTbUKgj = new Float32Array([5300, 4972, -1659, -1432, -6347, 1108, -1098, -2980, 901, -9418, -3978, 2322, 6477, 4459, -6495, -130, 5068, 1814, 7525, 5162, 5132, 1553, 2751, 5122, -9232, -6244, 1425, -5573, 9129, -6471, -3182, 8619, 1768, 3887, -2293, 7708, -9871, -3328, -2141, 4344, 5188, 3239, -4317, 7893, -4431, -5705, -5753, 8152, -2467, 1039, 2825, -6433, 7089, -5889, -4992, 8319, -977, -5930, 1059, -6560, 7856, 590, -4030, -3217, -9343, 3674, 2740, 2831, -85, 4370, -7291, -9479, -451, -4706, -6651, 8932, -6660, -581, -7057, 4486, 3504, 7997, 3478, -4484, -888, 3258, -3696, -4404, 5664, -2411, 354, -794, -4627, 7869, 7948, 674, -7492, -2661, -6138, 1491, 4386, 3297, 1391, -9161, -6676, 8556, -9523, -3709, 9032, 2158, 9644, 8025, -7221, -4964, 290, 3265, -4522, 1125, -289, 4937, -162, -1014, 3644, -149, -5583, -9986, 5151, 1480, 1284, -6968, 3204, -5742, -8627, -6104, 9723, -9281, 4706, -1799, -8045, 3665, -7530, -2072, 4717, 6355, 8559, -2508, -5543, 616, -4908, -6629, -2333, 9963, -3828, 3368, 6692, 3126, 9546, -2297, 4923, -9754, -72, -7415, -7167, -1314, 6328, -4899, 8340, 5136, 6975, 9517, -3028, -1840, -8240, 7831, -8347, 9882, 9878, -4892, -3302, 8111, 8193, 9774, -2828, 1481, -3400, 7724, -4934, 4453, 8604, 1783, -6280, -3310, -829, 9713, -8281, -4336, -2463, -7964, -8085, -6142, 6556, 1664, 9250, 644, 9385, -6624, -8158, -8248, 1849, -7000, -3380, 4435, -3010, -3113, -2373, -8734, -774, -9305, 9655, -33, -6831, -6121, -4513, 8099, -164, 9032, 4644, -8830, 5842, 3823, -7463, -4891, 9844, 3862, 8714, 8168, 2525, -2232, -9795, -6888, 7882, 4271, -9561, -8748, 5352, 3728, 4103, 4823, -6001, 5790, 3735, 7113, -375, 9692, -7163, 4589, 5849, -6402, -8071, 5528, 4693, -2700, 3735, -8671, 4643, -935, 8564, 117, 8304, 483, -6266, 1340, 3188, -1332, -2466, -8062, -8754, 9521, 6959, 7544, 1707, -7309, -6291, 2801, -8471, 5026, 7795, 9574, 1667, -9073, 2528, -8222, 9821, 375, 8892, 5907, -8690, -2741, 4020, -56, 6728, -1598, -7253, -1276, -1825, 4995, 1867, -9989, 8246, -1590, 9455, 8697, -6734, -9387, -7451, -8558, -2038, -353, 8834, 4027, -7956, 6131, 3027, -4476, 2966, 9202, -8518, 8304, -7777, 8824, 2746, 3406, -4000, 241, 4584, 410, -3387, -5090, -6592, 73, -7891, -8867, 1713, 2516, -4882, 1379, 9464, 5894, 7837, -7539, -2526, -1713, -2619, 4713, -5090, 8523, -7339, 1029, -6595, 1304, 2587, -7389, -3279, 9823, 9724, 7537, 11, -11, -7473, 2802, -8366, -5276, -5902, -8907, -4773, -5431, 6092, 592, -1671, -8236, 7842, 5919, 6284, -716, -6272, 8988, -8551, 5155, 5360, 4606, -7183, -3340, 4218, 1321, -2824, -6661, 4602, -3634, 2318, -291, -9295, 3341, -6798, 5385, 4488, 3675, -8829, 6630, 7810, -6585, 2571, -7921, 8915, -3376, -4944, 7395, 6060, 6482, 4248, -842, 1054, 6490, 3553, -2025, 9498, 9483, 7257, -6, -9498, 3304, 9102, -9347, 6851, -9792, -4793, 5140, -5097, 6237, -7029, -3422, 2842, -7604, 8809])
const GNJjxGHuOJGNiXIPR = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const rsVrzjsKBMe = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const fKGLTaJZThrnGsxmDF = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const zoeCJsaUZFUM = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const sVgEZWnNcye = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const jTLRuTHpe = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const cihgRpbBZU = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');

async function main() {
    const bjNifIZ = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const OVxUyCnWiQdgLMgqH = await bjNifIZ.requestDevice();
    const JUprJHp = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "mYTBjcuUdKcJDDSWXt"
    });
    const WNXYabJVtiHS = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "BXzISMZJjmVre",
        size: {
            width: 2428,
            height: 3271,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const nvVTepP = WNXYabJVtiHS.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "roVkduLIFjofxFTQIG"
    });
    const dLrUkMUEd = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 743,
        label: "AoMEWxnPLjnvGPaD",
        type: "occlusion"
    });
    const kjPZTcOnvgevFJJZR = JUprJHp.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.2029030520014825,
                g: 0.38391316120020536,
                b: 1.1998380885679358,
                a: 1.9033411010722192
            },
            loadOp: "load",
            storeOp: "discard",
            view: nvVTepP
        }],
        label: "HqSacW",
        maxDrawCount: 1969795302,
        occlusionQuerySet: dLrUkMUEd
    });
    kjPZTcOnvgevFJJZR.end();
    const mSZiySioD = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "BbjUFvHQX"
    });
    const ktuNQtZMiUOCJFFoDTCe = JUprJHp.beginComputePass({
        label: "SHySJgtgDD"
    });
    ktuNQtZMiUOCJFFoDTCe.end();
    const EdCDDpRUDudYNNxRbqV = JUprJHp.beginComputePass({
        label: "IOsvOvGbQ"
    });
    const wusOfENLUKbi = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "RGePVjOBjhyyNFcolkC",
        size: {
            width: 177,
            height: 2494,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const FZFbtFhRjg = wusOfENLUKbi.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "oVWGInDzbjlzLqB"
    });
    const wTXvonxvSaLU = JUprJHp.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6185171416111215,
                g: 1.5078354525607782,
                b: 0.39812189563455425,
                a: 0.25212563976777824
            },
            loadOp: "clear",
            storeOp: "store",
            view: FZFbtFhRjg
        }],
        label: "jwkbuBGVX",
        maxDrawCount: 4246091596,
        occlusionQuerySet: dLrUkMUEd
    });
    wTXvonxvSaLU.end();
    const JDwqTKmuPCHapb = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "jXbEz",
        mappedAtCreation: false,
        size: 246807368,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    const nboebbcnmoJFMeFtOrP = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "bIMjhef",
        size: {
            width: 3374,
            height: 2289,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const RmBmFOCcZgyVhOvSmzCk = nboebbcnmoJFMeFtOrP.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "DnYngoJSBriE"
    });
    const QSCpEpJOHuXipulom = JUprJHp.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.15909018255924678,
                g: 1.7054923907255146,
                b: 1.0723230111988398,
                a: 0.14731714025999287
            },
            loadOp: "clear",
            storeOp: "discard",
            view: RmBmFOCcZgyVhOvSmzCk
        }],
        label: "VIXFlkowuEYKWVkjvQs",
        maxDrawCount: 3352712121,
        occlusionQuerySet: dLrUkMUEd
    });
    const AhltXoTkvZCgL = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "fragment",
        code: cihgRpbBZU
    });
    const QMyZIQ = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: jTLRuTHpe
    });
    const ocZJTjntJcRGeYR = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "LyOIAAVCKgXSvJmGllsn",
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
            module: QMyZIQ
        }
    });
    QSCpEpJOHuXipulom.setPipeline(ocZJTjntJcRGeYR);
    QSCpEpJOHuXipulom.draw(1);
    const yMwNUqVeOottbXSNZlGR = OVxUyCnWiQdgLMgqH.queue
    const WbfTwfgWcAnRtEvJtj = OVxUyCnWiQdgLMgqH.features
    QSCpEpJOHuXipulom.setVertexBuffer(0, JDwqTKmuPCHapb);
    const XNJwyNyPxEcH = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: sVgEZWnNcye
    });
    const GQhWNPUxVdALA = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: XNJwyNyPxEcH
        },
        label: "SAzUlNiWtovDc",
        layout: "auto"
    });
    const EATttZINVpP = ocZJTjntJcRGeYR.label
    const FceVcqzgxSmyGdmCdg = bjNifIZ.features
    const uyHSXzwumVt = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "ANgmWGvzpWX",
        mappedAtCreation: true,
        size: 8984116,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const gAzOkNHIhqNa = FZFbtFhRjg.label
    const FwwaTYnw = EdCDDpRUDudYNNxRbqV.label
    const vzjpYf = bjNifIZ.limits
    QSCpEpJOHuXipulom.draw(4);
    const mxyQUQZes = mSZiySioD.beginComputePass({
        label: "NoJKiD"
    });
    const iHSYBtNdpYWKKHygs = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "QLpztORPgHCNnidwScf"
    });
    const szeWoCcponhu = iHSYBtNdpYWKKHygs.beginComputePass({
        label: "vRMUdQSaieOUiuST"
    });
    const JmAJuJjbpf = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "SvrnAruUFmAJpav",
        size: {
            width: 178,
            height: 161,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const gYFVPBtVShjS = JmAJuJjbpf.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "zRwMO"
    });
    const gosCICGu = mSZiySioD.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7959495947929438,
                g: 0.6552203739984823,
                b: 0.9064899620583147,
                a: 1.1640839447141822
            },
            loadOp: "load",
            storeOp: "discard",
            view: gYFVPBtVShjS,
            depthSlice: 3
        }],
        label: "hPIlvlLysUrvvQkdodt",
        maxDrawCount: 436162065,
        occlusionQuerySet: dLrUkMUEd
    });
    const jWaUcMrpDPCc = OVxUyCnWiQdgLMgqH.queue
    const voQqMGsCFGN = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: zoeCJsaUZFUM
    });
    const GKWIpcq = nvVTepP.label
    gosCICGu.setVertexBuffer(0, JDwqTKmuPCHapb);
    const fQxgyT = GQhWNPUxVdALA.getBindGroupLayout(0);
    mxyQUQZes.setPipeline(GQhWNPUxVdALA);
    const DtLuxrBNP = bjNifIZ.features
    const PimlLGosWGpuVZDPJ = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "rBEayN"
    });
    const EGoKjUDnPddVIcXedpQo = OVxUyCnWiQdgLMgqH.queue
    const ZqdtSyh = await navigator.gpu.getPreferredCanvasFormat();
    gosCICGu.end();
    const CtiTlDmYVWzfzoYPCXT = dLrUkMUEd.type
    const IgJVjhPa = bjNifIZ.isFallbackAdapter
    const sCvdaaKaPCzkuIwbN = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "QobgXKexuRej",
        mappedAtCreation: true,
        size: 77646400,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const Qlioctvqka = PimlLGosWGpuVZDPJ.beginComputePass({
        label: "chEZYarne"
    });
    const DXcEDKEHSC = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "stencil8",
        label: "YgoltenEIQvIbibEdHz",
        size: {
            width: 1018,
            height: 2093,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["stencil8"]
    });
    const rtVHzQOgzSZ = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: fKGLTaJZThrnGsxmDF
    });
    const SOQWOEBJKcWXEBxNg = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const YugNszyjrNxfxFQr = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: rsVrzjsKBMe
    });
    const UJMAQEvQhgHdkBer = ocZJTjntJcRGeYR.label
    QSCpEpJOHuXipulom.end();
    EdCDDpRUDudYNNxRbqV.end();
    const RTKDiONyDQXYGGDOSxlm = JUprJHp.finish();
    const ZpKxBwnepHhFvyWKgqbd = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "dlfiNdc",
        size: {
            width: 2211,
            height: 3992,
            depthOrArrayLayers: 24
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const hSfZkGmYnaig = ZpKxBwnepHhFvyWKgqbd.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "sToAOMceWrhenpb"
    });
    const AKXpWlZ = PimlLGosWGpuVZDPJ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9765176638308688,
                g: 0.09879867960950439,
                b: 1.1378197547921234,
                a: 1.1123022522916066
            },
            loadOp: "load",
            storeOp: "store",
            view: hSfZkGmYnaig
        }],
        label: "psfXPYdCZjf",
        maxDrawCount: 3204854336,
        occlusionQuerySet: dLrUkMUEd
    });
    AKXpWlZ.end();
    const FmgyLBbk = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
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
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "KaKkjnzAhwahVyJx",
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
            module: QMyZIQ
        }
    });
    const mVUmrRHmEpiFC = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 1845,
        label: "cvuBQH",
        type: "occlusion"
    });
    const xXCudxMuNN = RmBmFOCcZgyVhOvSmzCk.label
    const JEqRkrQpPDmnOz = SOQWOEBJKcWXEBxNg.limits
    const rbaZOVwcNtyWPfAwE = OVxUyCnWiQdgLMgqH.queue
    szeWoCcponhu.end();
    const PTLCdULlvadBY = iHSYBtNdpYWKKHygs.finish();
    const DjXmGHPxUdBeGqcuij = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: YugNszyjrNxfxFQr
        },
        label: "MvfGac",
        layout: "auto"
    });
    Qlioctvqka.end();
    const GQQFrgzlwaKAaaSFaxJ = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "dDFFL",
        size: {
            width: 847,
            height: 1639,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const lAcof = GQQFrgzlwaKAaaSFaxJ.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "r8unorm",
        label: "sbHXRcx"
    });
    const COXyLEwyDJIPMhxqr = mSZiySioD.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9888955714789243,
                g: 0.2600633421862226,
                b: 1.705436575888032,
                a: 0.9966688497119889
            },
            loadOp: "load",
            storeOp: "store",
            view: lAcof
        }],
        label: "rTzltzzitmeb",
        maxDrawCount: 1710829513,
        occlusionQuerySet: mVUmrRHmEpiFC
    });
    COXyLEwyDJIPMhxqr.end();
    const zZTvYzvCBi = await navigator.gpu.getPreferredCanvasFormat();
    const kHBESWvaBKETgugRa = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "vDTWzvWZUgqpTtbjN",
        size: {
            width: 3944,
            height: 2621,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const uqDEzLTISzwpIeeRQBF = kHBESWvaBKETgugRa.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "EBMvrtDrmycj"
    });
    const oOHrG = mSZiySioD.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8239183689737661,
                g: 0.19632025408046538,
                b: 0.005011994246218565,
                a: 1.1723415693520776
            },
            loadOp: "load",
            storeOp: "discard",
            view: uqDEzLTISzwpIeeRQBF
        }],
        label: "GScamrdPqq",
        maxDrawCount: 2404777996,
        occlusionQuerySet: dLrUkMUEd
    });
    oOHrG.end();
    const xCxlKu = dLrUkMUEd.count
    mxyQUQZes.setPipeline(DjXmGHPxUdBeGqcuij);
    const rNyFLIhcWZUUj = uqDEzLTISzwpIeeRQBF.label
    const rnEUyFs = PimlLGosWGpuVZDPJ.label
    mxyQUQZes.end();
    const xUjDRcZsnYiJwH = mSZiySioD.finish();
    const wFlAsFGjVNWHFoC = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 864,
        label: "UZxkBCtdfY",
        type: "occlusion"
    });
    const IrAWUg = GQQFrgzlwaKAaaSFaxJ.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 8,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "iYALXTKMHbBlnSPnVLF"
    });
    const pioexezoUzwVdbx = PimlLGosWGpuVZDPJ.beginComputePass({
        label: "YUwxCHkXJgwUPvCgNixs"
    });
    pioexezoUzwVdbx.end();
    const NGMQBTCHkqBY = PimlLGosWGpuVZDPJ.beginComputePass({
        label: "iDykHmicBTnrrEJzIvCY"
    });
    const lJYeFrJCbYzbJIGuvKC = NGMQBTCHkqBY.label
    const rDuqEIhzNWg = bjNifIZ.info
    const MxRddSa = GQhWNPUxVdALA.label
    const AwVJzvbPaxqlWvo = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "QbWuQadsgk",
        mappedAtCreation: false,
        size: 250758660,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const ORxfepf = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
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
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "wCUzfWSFUbEOsgCFRBS",
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
            module: QMyZIQ
        }
    });
    const BLrLE = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "uUkEtDaKlBrNtsoXyB",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GlLyyIGuKSZUDWGEHQ = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "XQOOhpksRs",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    yMwNUqVeOottbXSNZlGR.writeBuffer(BLrLE, 0, GNJjxGHuOJGNiXIPR);
    const wRdruqNxA = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "DjXmGHPxUdBeGqcuij.bindGroup",
        layout: DjXmGHPxUdBeGqcuij.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: BLrLE
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    NGMQBTCHkqBY.setBindGroup(0, wRdruqNxA);
    const aNUFBiBNYbs = NGMQBTCHkqBY.label
    const PXYmozwwYLITF = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "DdfwHhhpriASdlscS",
        size: {
            width: 839,
            height: 375,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const vRtrZWSLIRzLdjAkqI = PXYmozwwYLITF.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "kDDBnRpyXacmcRKsdrGW"
    });
    const rqilwfuWgzoDLHXGu = PimlLGosWGpuVZDPJ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.21248129493471257,
                g: 1.8294716887099793,
                b: 1.7107403789692381,
                a: 1.5783821348489042
            },
            loadOp: "clear",
            storeOp: "discard",
            view: vRtrZWSLIRzLdjAkqI,
            depthSlice: 9
        }],
        label: "upmiiwTtZfVdZndW",
        maxDrawCount: 1453605529,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    rqilwfuWgzoDLHXGu.setVertexBuffer(0, JDwqTKmuPCHapb);
    const QksiWzpPPxSnzo = vRtrZWSLIRzLdjAkqI.label
    const tdYKZGRudHOr = DjXmGHPxUdBeGqcuij.getBindGroupLayout(0);
    const QJDxfHIcZbqznMgWiEN = bjNifIZ.isFallbackAdapter
    const UYIziizwgYPFjQwe = rqilwfuWgzoDLHXGu.label
    const NJqfV = DjXmGHPxUdBeGqcuij.label
    const nYRpyDYaG = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: voQqMGsCFGN
        },
        label: "jXOURfkNBixq",
        layout: "auto"
    });
    const NBNigBWUGAaJUGpqfbtk = dLrUkMUEd.type
    const PBnfCYeYwTHflbTyhl = OVxUyCnWiQdgLMgqH.limits
    const IqeDjKRanTyAr = await navigator.gpu.getPreferredCanvasFormat();
    const xipvJPxcUZbFzhNvUa = bjNifIZ.info
    const HehKSwmoCFeQ = OVxUyCnWiQdgLMgqH.label
    const ZJpSlVZblkqDSdvXwLmz = dLrUkMUEd.type
    const XopiVtYkjjjs = SOQWOEBJKcWXEBxNg.features
    const aGFPZMrytGl = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32uint",
        label: "iszoUDKJCwouLB",
        size: {
            width: 393,
            height: 626,
            depthOrArrayLayers: 33
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg32uint"]
    });
    const oyKWsNXtsS = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "iNAeOxGAohybtiyzR",
        mappedAtCreation: false,
        size: 92004780,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const scchqJGAokP = bjNifIZ.info
    const hTxsC = GQhWNPUxVdALA.label
    const vNmFMsMitxkN = mVUmrRHmEpiFC.count
    const kcJTjvuUJQChW = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: voQqMGsCFGN
        },
        label: "XINIZOc",
        layout: "auto"
    });
    const rPpwGeSmuektcEHo = OVxUyCnWiQdgLMgqH.limits
    const CfiqcOXWqNzT = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "NOlNMwyuAirQYWfsD",
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
            module: QMyZIQ
        }
    });
    rqilwfuWgzoDLHXGu.setPipeline(CfiqcOXWqNzT);
    rqilwfuWgzoDLHXGu.draw(3);
    jWaUcMrpDPCc.writeBuffer(BLrLE, 32, KyEGvdTbUKgj);
    const AZETGFI = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: KYXMHTd
    });
    rqilwfuWgzoDLHXGu.end();
    const xffFTgt = rbaZOVwcNtyWPfAwE.label
    yMwNUqVeOottbXSNZlGR.writeBuffer(BLrLE, 0, hslisERa);
    const NoCLqbOtNm = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "kcJTjvuUJQChW.bindGroup",
        layout: kcJTjvuUJQChW.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: BLrLE
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const rgoaqyoktsVT = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "giqMGzMURnFEz"
    });
    const UIzOEkFxnvYbdWW = rgoaqyoktsVT.beginComputePass({
        label: "dIESTswGGPByaL"
    });
    const zJUgpNCMedG = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "jiWhdI",
        size: {
            width: 3814,
            height: 3479,
            depthOrArrayLayers: 18
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const FswaCCLWADlcZmlX = zJUgpNCMedG.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgb10a2unorm",
        label: "IdYiMPJleVXcQLdZaE"
    });
    const UKECwk = rgoaqyoktsVT.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1620528655141056,
                g: 1.757481115070255,
                b: 1.2048239198504505,
                a: 1.5315986252119551
            },
            loadOp: "clear",
            storeOp: "store",
            view: FswaCCLWADlcZmlX
        }],
        label: "BkISJHZfUxaCaS",
        maxDrawCount: 2502492437,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    const llCQoxnuPmkEah = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "sOrtz",
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
            module: QMyZIQ
        }
    });
    UKECwk.setPipeline(llCQoxnuPmkEah);
    const aRGPmUzlcD = navigator.gpu.wgslLanguageFeatures
    const ASbLRzpNVT = mVUmrRHmEpiFC.label
    const zGPmE = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: AZETGFI
        },
        label: "SeEQFjF",
        layout: "auto"
    });
    const aVlQj = bjNifIZ.features
    const CpuwqTsGmNKPapDfzzFv = OVxUyCnWiQdgLMgqH.limits
    const RBUczARTFneyECZLlY = SOQWOEBJKcWXEBxNg.limits
    const YxKSAFptINvET = UKECwk.label
    const OfgwwPCsE = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const KUzLTrscbMrxTxzzN = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: voQqMGsCFGN
        },
        label: "ljnThiLSrI",
        layout: "auto"
    });
    const dsyoZOCP = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba16float",
        label: "sGbYsfChtX",
        size: {
            width: 3752,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    UKECwk.setVertexBuffer(0, GlLyyIGuKSZUDWGEHQ);
    const jhHGeXuuIotSMn = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const SnGzXSHou = NGMQBTCHkqBY.label
    const DYXfTNesWHaIGxWnGBh = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "gtxofEB"
    });
    const EMaEFwWgjxtcjr = DYXfTNesWHaIGxWnGBh.beginComputePass({
        label: "beXFETKfJfVSBLLwuH"
    });
    const HRHgIVhonSmwHvzDv = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "yujMgGVDbybD",
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
            module: QMyZIQ
        }
    });
    const OiymjBOSSXnosBXalR = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: dmSTCFYW
    });
    const eClijewHry = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: SORQwgpSRRpOpoqN
    });
    const MInrVdJSVUz = KUzLTrscbMrxTxzzN.label
    const tjZRkXqBwSOPBmNtgwJI = FmgyLBbk.label
    const QVIgmDTysDJMUdfTrkI = OVxUyCnWiQdgLMgqH.queue
    rbaZOVwcNtyWPfAwE.submit([PTLCdULlvadBY]);
    const POllDKmzZRxD = OfgwwPCsE.info
    const nyVlViHMO = rgoaqyoktsVT.label
    const zLKTpPz = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: JillrdfFHNfy
    });
    const HlrTOHIxX = uqDEzLTISzwpIeeRQBF.label
    const IpyqpBweSwIJPnkzdVV = OfgwwPCsE.features
    const DhSKiIqJfnXoWrAPH = OVxUyCnWiQdgLMgqH.label
    const qNQAvwgAPNNnGy = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: AVOtZ
    });
    const xBZzDbiN = OVxUyCnWiQdgLMgqH.label
    const okoIzYAyer = uqDEzLTISzwpIeeRQBF.label
    const OrxdHhgklvt = SOQWOEBJKcWXEBxNg.limits
    const WRRPlweMiDnhnwwXneCt = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const OLunZbxWloZsaIcnN = WRRPlweMiDnhnwwXneCt.info
    const uDBEPTVynjEUUmRWbgKu = navigator.gpu.wgslLanguageFeatures
    const NwRkt = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "EKtpggdpfjFXyWytlZEF"
    });
    UKECwk.end();
    const jaazlJnRbl = mVUmrRHmEpiFC.label
    const IJTEZGynqMkuB = bjNifIZ.info
    const TgpPGcAwyrkvvJ = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "XIhcBUMjQTNC",
        size: {
            width: 804,
            height: 357,
            depthOrArrayLayers: 27
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const esSZBPKQM = TgpPGcAwyrkvvJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "fYecznWDBMftKRmQFil"
    });
    const UqhYVBUpZdSFUkvFGvCx = NwRkt.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.35008794143343813,
                g: 1.7947194673154285,
                b: 1.1142906389036116,
                a: 1.051987626157169
            },
            loadOp: "clear",
            storeOp: "store",
            view: esSZBPKQM,
            depthSlice: 1
        }],
        label: "VbWmRUICtlJhDHiCNox",
        maxDrawCount: 2963627211,
        occlusionQuerySet: dLrUkMUEd
    });
    UqhYVBUpZdSFUkvFGvCx.setPipeline(CfiqcOXWqNzT);
    UqhYVBUpZdSFUkvFGvCx.end();
    const BDsHursPUEYjEdzBJGN = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "vsGnJ",
        size: {
            width: 856,
            height: 440,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const FYKberFSETeTm = BDsHursPUEYjEdzBJGN.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "SqoUTFgX"
    });
    const TeWsJ = DYXfTNesWHaIGxWnGBh.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7792731296959812,
                g: 0.785179280157406,
                b: 0.9248965183659117,
                a: 1.2135783741323198
            },
            loadOp: "load",
            storeOp: "store",
            view: FYKberFSETeTm,
            depthSlice: 2
        }],
        label: "upCJTTXgUOhubeO",
        maxDrawCount: 1632546565,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    TeWsJ.setVertexBuffer(0, GlLyyIGuKSZUDWGEHQ);
    const wwVjXSlaKopuSFps = SOQWOEBJKcWXEBxNg.isFallbackAdapter
    const AAdDg = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "fragment",
        code: iNeCiACijz
    });
    UIzOEkFxnvYbdWW.setPipeline(kcJTjvuUJQChW);
    const yRlGhMSwL = OVxUyCnWiQdgLMgqH.features
    const JyjAhHf = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AAdDg,
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
                        srcFactor: "dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "niEWhBVoB",
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
            module: zLKTpPz
        }
    });
    TeWsJ.setPipeline(JyjAhHf);
    TeWsJ.draw(10);
    const WrbpOBtCHueJHNpCN = KUzLTrscbMrxTxzzN.label
    const UlmGKs = bjNifIZ.info
    const CIoDbDvvIRND = WNXYabJVtiHS.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "WowyBVnMEQWUyRcwyOb"
    });
    const wzGeNghxdQLycqCbpF = OVxUyCnWiQdgLMgqH.features
    const bQDIGYsvf = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AAdDg,
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
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "hJpDj",
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
            module: zLKTpPz
        }
    });
    const NLcNsI = OVxUyCnWiQdgLMgqH.features
    const gzIJzny = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "SxYtGSxAkn",
        mappedAtCreation: false,
        size: 46274596,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
    });
    const DvnBAXMpZeXFA = nYRpyDYaG.label
    const fENySOeBCA = navigator.gpu.wgslLanguageFeatures
    UIzOEkFxnvYbdWW.setPipeline(nYRpyDYaG);
    EMaEFwWgjxtcjr.setPipeline(KUzLTrscbMrxTxzzN);
    const lvdzZNMOR = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AAdDg,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "constant"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "ECHOuVfoyqw",
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
            module: zLKTpPz
        }
    });
    const RAWBghPqAeNTH = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "WkoxeJgQgCDHyNU",
        size: {
            width: 3371,
            height: 1067,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const oMWDPdFYSfwJkB = OVxUyCnWiQdgLMgqH.features
    const evZKLFX = NwRkt.finish();
    const FLjmwcS = OVxUyCnWiQdgLMgqH.label
    const IVefUreUF = dLrUkMUEd.count
    const sCoHHsPpochDTy = OVxUyCnWiQdgLMgqH.features
    const uYYewgSZYPlleNPHG = jWaUcMrpDPCc.label
    const HaZUeqigNbM = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "OuGid",
        size: {
            width: 2048,
            height: 1321,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const JGskYZzJhUwQdA = HaZUeqigNbM.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "iCGGyGKxLhUN"
    });
    const aedce = PimlLGosWGpuVZDPJ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6221409200755132,
                g: 1.716682802883122,
                b: 0.2985023622997549,
                a: 1.614860500601716
            },
            loadOp: "clear",
            storeOp: "store",
            view: JGskYZzJhUwQdA
        }],
        label: "JvIFZIIREAhX",
        maxDrawCount: 3918252271,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    const jFPJgzzsNz = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 492,
        label: "lyUEdOJE",
        type: "occlusion"
    });
    const gsZRFYyhBdb = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AAdDg,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "PhBOlqaRkXFXWArP",
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
            module: QMyZIQ
        }
    });
    aedce.setPipeline(gsZRFYyhBdb);
    EMaEFwWgjxtcjr.end();
    const qqEzIuDZ = jFPJgzzsNz.count
    const HeRQxMUsPZfCbJx = UIzOEkFxnvYbdWW.label
    const DcPFAxmSgWwHivAXfBVm = gsZRFYyhBdb.label
    aedce.end();
    const PyFRNvlwEaghPnqWGq = TeWsJ.label
    const lXGYA = WRRPlweMiDnhnwwXneCt.limits
    const eNjhWUU = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "wHHEWoJ",
        size: {
            width: 965,
            height: 2145,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const HVHPymgHLOwzDbkkj = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: UbsoDWkfHRkOGD
    });
    const ajMcm = WRRPlweMiDnhnwwXneCt.isFallbackAdapter
    const QROgoPcDjqnkjqnAv = OVxUyCnWiQdgLMgqH.features
    const LfVCNLCuTivwSio = wFlAsFGjVNWHFoC.label
    NGMQBTCHkqBY.setBindGroup(0, wRdruqNxA);
    const ZJTkpMS = await navigator.gpu.getPreferredCanvasFormat();
    NGMQBTCHkqBY.end();
    const cuUPjbGNFTzeVzMsz = rgoaqyoktsVT.label
    const lhsVBAXT = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "fragment",
        code: NtReZSgubgdPmVp
    });
    const HUyDjpaiHW = TeWsJ.label
    const nBmNywVj = await navigator.gpu.getPreferredCanvasFormat();
    TeWsJ.setPipeline(JyjAhHf);
    const tPYytagnPaxowHD = UIzOEkFxnvYbdWW.label
    const IkQgGYsdUplKWIKtZgy = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "bfSZuCREOxTPNJRnGwSK",
        size: {
            width: 3688,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8sint"]
    });
    const rBfHynfahREyRTxpD = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: YugNszyjrNxfxFQr
        },
        label: "nIigH",
        layout: "auto"
    });
    const TmSpmkFHbGFIFdv = dLrUkMUEd.type
    const CoxMxGUXujnHmgHxzOc = TeWsJ.label
    TeWsJ.setVertexBuffer(0, GlLyyIGuKSZUDWGEHQ);
    QVIgmDTysDJMUdfTrkI.writeBuffer(BLrLE, 16, IFdKctlW);
    const DfaKOptagpXjiOiE = QVIgmDTysDJMUdfTrkI.label
    const bBfEebUoVBBvkLUK = navigator.gpu.wgslLanguageFeatures
    const vdgyHPKcXP = await navigator.gpu.getPreferredCanvasFormat();
    UIzOEkFxnvYbdWW.setPipeline(rBfHynfahREyRTxpD);
    jWaUcMrpDPCc.submit([RTKDiONyDQXYGGDOSxlm]);
    const CdEvgpsHXunIrIXZXziI = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "BsUfqVWqFhW"
    });
    TeWsJ.draw(6);
    UIzOEkFxnvYbdWW.setBindGroup(0, NoCLqbOtNm);
    const RRVJKgWwvaiiXSbcBZag = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "sTSPTcZg"
    });
    const qLQlmgPUjSq = RRVJKgWwvaiiXSbcBZag.label
    const tWtQHuYylvDuZvNhW = OVxUyCnWiQdgLMgqH.limits
    const FogIHdJG = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "YKXVDpUIdFchdoZzoKJI",
        mappedAtCreation: true,
        size: 210049800,
        usage: GPUBufferUsage.COPY_SRC
    });
    const LvzlaNnNGlzEfIpvKU = PimlLGosWGpuVZDPJ.finish();
    const HrTCC = DYXfTNesWHaIGxWnGBh.label
    const qXulJy = UIzOEkFxnvYbdWW.label
    const oFMSlzUJudGqOtM = OVxUyCnWiQdgLMgqH.features
    const hsokNxeajrxceVvuhv = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
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
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "rTuCNUaQAUjCu",
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
            module: zLKTpPz
        }
    });
    const oIxXNInYrPSCS = WRRPlweMiDnhnwwXneCt.isFallbackAdapter
    const rvjOWtsOcsWaRy = rBfHynfahREyRTxpD.getBindGroupLayout(0);
    const tfsNugJgol = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32float",
        label: "zXaMGKwrkdyRGrpFIR",
        size: {
            width: 580,
            height: 357,
            depthOrArrayLayers: 18
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r32float"]
    });
    const OfNKAcznl = RRVJKgWwvaiiXSbcBZag.label
    const FlWNKvjwxmDmQQWNMhLf = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: YugNszyjrNxfxFQr
        },
        label: "KIEZVs",
        layout: "auto"
    });
    TeWsJ.draw(4);
    const zpbBtIYpMy = rgoaqyoktsVT.label
    const RBgzhmanCQ = OVxUyCnWiQdgLMgqH.label
    const gayMyxeQBzhrMcXnS = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const QUREGds = OfgwwPCsE.features
    const CyEHnlEuMWfTwOJ = nYRpyDYaG.label
    const OsaRlqEy = hSfZkGmYnaig.label
    const yxPYUIcctDOgRq = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const OXmSknVxjFx = wFlAsFGjVNWHFoC.label
    const riVRtsgjmYOI = JyjAhHf.label
    UIzOEkFxnvYbdWW.setBindGroup(0, NoCLqbOtNm);
    TeWsJ.setPipeline(JyjAhHf);
    const keUBxbJerTqXvuTXfLxh = OVxUyCnWiQdgLMgqH.features
    jWaUcMrpDPCc.submit([xUjDRcZsnYiJwH]);
    const ZogiXHUXXNeh = wFlAsFGjVNWHFoC.count
    const TeeyvPZjjr = OVxUyCnWiQdgLMgqH.features
    const PrSNwVnICTAESd = gayMyxeQBzhrMcXnS.features
    const itzfjuMKFsBr = TeWsJ.label
    TeWsJ.setPipeline(JyjAhHf);
    const zDnSJedKUhuGnPgW = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "compute",
        code: XUETrkYgBXBc
    });
    const fJASLMzUCOAZdTC = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "lOoBlQMmT",
        mappedAtCreation: true,
        size: 53475932,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST
    });
    UIzOEkFxnvYbdWW.end();
    const WYAlqhtbTPsfqsa = CdEvgpsHXunIrIXZXziI.beginComputePass({
        label: "tahDiqUXFwKzc"
    });
    WYAlqhtbTPsfqsa.setBindGroup(0, wRdruqNxA);
    const yuMMzEcCaBLrgjoeZ = await navigator.gpu.getPreferredCanvasFormat();
    const rgqHMoQWx = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const JSJeyhbrL = WRRPlweMiDnhnwwXneCt.isFallbackAdapter
    const QzsjczlHSXCaITl = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "gnCilFv",
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
            module: QMyZIQ
        }
    });
    WYAlqhtbTPsfqsa.end();
    const subYeRRBPNSrHRP = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: eClijewHry
        },
        label: "RfWykcHHrFo",
        layout: "auto"
    });
    const EHGtpv = bjNifIZ.features
    const MiUbao = rgqHMoQWx.info
    const bjxhenAvhATVakZrSxv = RRVJKgWwvaiiXSbcBZag.beginComputePass({
        label: "PsBftZcssABLJO"
    });
    const oIKvWC = bjxhenAvhATVakZrSxv.label
    bjxhenAvhATVakZrSxv.setBindGroup(0, wRdruqNxA);
    const olhMJqqXbU = OVxUyCnWiQdgLMgqH.label
    const YzugSiDhIogf = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const gSxBLmy = jhHGeXuuIotSMn.features
    TeWsJ.end();
    const XxUNyPTxunGvG = DYXfTNesWHaIGxWnGBh.finish();
    const qqgVisacnwTiYr = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: voQqMGsCFGN
        },
        label: "oDhqC",
        layout: "auto"
    });
    const PzkadcZdRVZgsbX = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "WPFLkmVyKRWuPGB",
        mappedAtCreation: false,
        size: 14792896,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    jWaUcMrpDPCc.writeBuffer(BLrLE, 32, qDBFPWLjysqmUT);
    const ukrSQDahjXmdPnTQErb = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32uint",
        label: "ESsBYxocH",
        size: {
            width: 1957,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg32uint"]
    });
    const bdEnWxEGOCDgYhjc = OVxUyCnWiQdgLMgqH.label
    const JzaERlu = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "BfUdlVvmvrZWtE",
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
            module: QMyZIQ
        }
    });
    const kPNrC = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "uzSAVJdAQpjPNrHbVzSN",
        size: {
            width: 1864,
            height: 3897,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GeUozckND = kPNrC.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm",
        label: "NctrjkET"
    });
    const kptEBuFGzokeeKTuwzxy = RRVJKgWwvaiiXSbcBZag.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8110053540538311,
                g: 1.7896253470883674,
                b: 1.6735834386351738,
                a: 1.9444338596202484
            },
            loadOp: "load",
            storeOp: "store",
            view: GeUozckND
        }],
        label: "DJQCA",
        maxDrawCount: 2490464881,
        occlusionQuerySet: jFPJgzzsNz
    });
    const bpBNjJwiuKTiSpIPc = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "NKQXFaggbygTaYANAZug",
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
            module: HVHPymgHLOwzDbkkj
        }
    });
    kptEBuFGzokeeKTuwzxy.setPipeline(bpBNjJwiuKTiSpIPc);
    kptEBuFGzokeeKTuwzxy.draw(9);
    kptEBuFGzokeeKTuwzxy.end();
    const jMRSKJUI = await navigator.gpu.getPreferredCanvasFormat();
    const dbZvYsVQpRmXOq = RRVJKgWwvaiiXSbcBZag.label
    const HjkWaGMSoTDoGAlub = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
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
                format: "r8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "JxcfjISBAy",
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
            module: zLKTpPz
        }
    });
    const ANdFWWxRqj = OfgwwPCsE.features
    const tNJJVNjjElWaLc = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "VztROIlJKcdrQH"
    });
    const VJoKp = RmBmFOCcZgyVhOvSmzCk.label
    const DIvSnaLKfKYoHv = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "iZZidYmXN",
        size: {
            width: 3775,
            height: 3120,
            depthOrArrayLayers: 31
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const fXeqgI = DIvSnaLKfKYoHv.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 7,
        format: "bgra8unorm-srgb",
        label: "uzBRCXCrAU"
    });
    const MWSWHRkYWeMQOVFMp = RRVJKgWwvaiiXSbcBZag.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6673460386762127,
                g: 1.8037906827987953,
                b: 1.7950747304061991,
                a: 1.8285080255727286
            },
            loadOp: "load",
            storeOp: "store",
            view: fXeqgI
        }],
        label: "jxCBzuetCSN",
        maxDrawCount: 2975978040,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    MWSWHRkYWeMQOVFMp.setVertexBuffer(0, PzkadcZdRVZgsbX);
    bjxhenAvhATVakZrSxv.setPipeline(subYeRRBPNSrHRP);
    const UyLJAyvDHMYI = nYRpyDYaG.getBindGroupLayout(0);
    bjxhenAvhATVakZrSxv.end();
    const xCAPuUsvtffcJjlKdFcu = YzugSiDhIogf.isFallbackAdapter
    MWSWHRkYWeMQOVFMp.end();
    const rzYgIZtSiYR = jFPJgzzsNz.label
    const xFHwRYkbzkkCDwiA = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "UFiwyogBUo",
        size: {
            width: 944,
            height: 214,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const TvcwyhTslvFAdW = xFHwRYkbzkkCDwiA.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "fXMNAgonPFUZnUir"
    });
    const bLrdoljmAvTFwR = rgoaqyoktsVT.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0177406690967228,
                g: 1.346887105474863,
                b: 0.70011086223873,
                a: 1.2912095948695614
            },
            loadOp: "clear",
            storeOp: "discard",
            view: TvcwyhTslvFAdW,
            depthSlice: 3
        }],
        label: "saJdALMaZCHqUsJBl",
        maxDrawCount: 1970973478,
        occlusionQuerySet: mVUmrRHmEpiFC
    });
    const wICibfwzfo = bLrdoljmAvTFwR.label
    const IKxODBt = RRVJKgWwvaiiXSbcBZag.beginComputePass({
        label: "JpMFRGUbvvVD"
    });
    IKxODBt.end();
    bLrdoljmAvTFwR.end();
    const vaslzmNbEuyXWgClWYrK = zGPmE.getBindGroupLayout(0);
    const KfNSnGriCSY = rgoaqyoktsVT.beginComputePass({
        label: "unoVuZV"
    });
    const yjaUIhhNVGRYcO = KfNSnGriCSY.label
    const VBorSsXobGHwwTrI = SOQWOEBJKcWXEBxNg.features
    const TAXaYMvUpKocR = OVxUyCnWiQdgLMgqH.features
    const xFeiGsQJyuIHszgN = gayMyxeQBzhrMcXnS.limits
    const knQNuLs = mVUmrRHmEpiFC.label
    const tqaCeag = RRVJKgWwvaiiXSbcBZag.finish();
    const iMbLHSzND = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    QVIgmDTysDJMUdfTrkI.submit([tqaCeag]);
    const XbBbqGgwqYFsIsOL = llCQoxnuPmkEah.label
    const ShrTarpqkd = KfNSnGriCSY.label
    const yLTVIkvGjSvaaf = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "HyGzZDMlCkuKNKIl",
        size: {
            width: 489,
            height: 959,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const cvoXz = yLTVIkvGjSvaaf.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "AGBLkEvcwEuDLWQ"
    });
    const oWYLqRsN = rgoaqyoktsVT.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.08099203801426436,
                g: 0.25457664642365363,
                b: 1.8398014368785687,
                a: 1.3797464652869649
            },
            loadOp: "clear",
            storeOp: "store",
            view: cvoXz,
            depthSlice: 14
        }],
        label: "QcZwlwYlqJmkVglWDt",
        maxDrawCount: 1438321153,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    const fixXEdUKScdBbo = await navigator.gpu.getPreferredCanvasFormat();
    const YqVsKprbvL = QVIgmDTysDJMUdfTrkI.label
    KfNSnGriCSY.setPipeline(DjXmGHPxUdBeGqcuij);
    oWYLqRsN.setVertexBuffer(0, JDwqTKmuPCHapb);
    const OMxNpTySfioDiVLEIaCZ = OVxUyCnWiQdgLMgqH.limits
    oWYLqRsN.setVertexBuffer(0, GlLyyIGuKSZUDWGEHQ);
    const HLRjGysXYglxzUYhjaXk = IrAWUg.label
    const IIwqSSY = aGFPZMrytGl.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 5,
        format: "rg32uint",
        label: "kelzgUmbRH"
    });
    const BMxhCNAl = oWYLqRsN.label
    oWYLqRsN.end();
    rbaZOVwcNtyWPfAwE.writeBuffer(BLrLE, 0, LgBVVyZjkjJu);
    const eAQeuizkXk = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "rBfHynfahREyRTxpD.bindGroup",
        layout: rBfHynfahREyRTxpD.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: BLrLE
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const JCsjtNQGeiBV = kPNrC.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 3,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "FZLiu"
    });
    const mzLqqnNAuoj = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "LGDiiFrhQ",
        size: {
            width: 3713,
            height: 2461,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const mAnZqzWViVerncDOUAh = mzLqqnNAuoj.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "YwAyS"
    });
    const ETgmnCNVwFjGP = tNJJVNjjElWaLc.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.21978840387921283,
                g: 0.060499172736431905,
                b: 1.1296792594931824,
                a: 1.1414136816662475
            },
            loadOp: "load",
            storeOp: "store",
            view: mAnZqzWViVerncDOUAh
        }],
        label: "mdqnjoDGXwwVKniPe",
        maxDrawCount: 52001240,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    const xEoeHW = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "dst-alpha"
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
        label: "mmRPEVPtYtpyIx",
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
            module: zLKTpPz
        }
    });
    ETgmnCNVwFjGP.setPipeline(xEoeHW);
    const mLpzsXIsDtglYvUON = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "gpBEHfcgF",
        mappedAtCreation: true,
        size: 131965840,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GHoUrixsgb = rgoaqyoktsVT.label
    KfNSnGriCSY.setBindGroup(0, eAQeuizkXk);
    ETgmnCNVwFjGP.setPipeline(xEoeHW);
    const rtLtFZEGUMIBTUzD = KUzLTrscbMrxTxzzN.getBindGroupLayout(0);
    const aduOqyRPUi = gayMyxeQBzhrMcXnS.isFallbackAdapter
    ETgmnCNVwFjGP.end();
    const JnxDqAsU = OVxUyCnWiQdgLMgqH.limits
    rbaZOVwcNtyWPfAwE.writeBuffer(BLrLE, 0, ExkqoXVwGBKebqd);
    const ApVSINGZVwE = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "FlWNKvjwxmDmQQWNMhLf.bindGroup",
        layout: FlWNKvjwxmDmQQWNMhLf.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: BLrLE
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const ifTIPQDwi = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "vPzBAtRuUFOpnULePHkA",
        size: {
            width: 169,
            height: 472,
            depthOrArrayLayers: 31
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgb10a2unorm"]
    });
    const doEITR = ifTIPQDwi.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "rgb10a2unorm",
        label: "RFvfKz"
    });
    const SRFPSLEtZarJSmyZVId = rgoaqyoktsVT.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.287258408199754,
                g: 0.21410825271447398,
                b: 0.37107185846521507,
                a: 0.2040276935181864
            },
            loadOp: "clear",
            storeOp: "discard",
            view: doEITR,
            depthSlice: 0
        }],
        label: "EGauZQ",
        maxDrawCount: 975000691,
        occlusionQuerySet: dLrUkMUEd
    });
    SRFPSLEtZarJSmyZVId.setPipeline(llCQoxnuPmkEah);
    SRFPSLEtZarJSmyZVId.draw(5);
    const FmtAqfIQKLLjbdMJUH = hsokNxeajrxceVvuhv.label
    const yHazxkbYcPDQTP = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba16float",
        label: "mYOUZCWWIw",
        size: {
            width: 2852,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const xHATBzTHwkryHvLwFbl = bjNifIZ.info
    const fgJJDuaqU = CdEvgpsHXunIrIXZXziI.beginComputePass({
        label: "hjLIVtAMwtCuUQgobVg"
    });
    const KWyjVTqFiQaUUJQpEPU = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "ckuTCmRmIH",
        mappedAtCreation: true,
        size: 216496500,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const WktqjlHFMEDhCpjdCg = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    SRFPSLEtZarJSmyZVId.draw(4);
    const kWoSZG = qqgVisacnwTiYr.label
    rbaZOVwcNtyWPfAwE.writeBuffer(PzkadcZdRVZgsbX, 4590156, rivcsDR);
    const KRRiG = SRFPSLEtZarJSmyZVId.label
    SRFPSLEtZarJSmyZVId.setVertexBuffer(0, AwVJzvbPaxqlWvo);
    const FGkDlaViKVMeYG = WktqjlHFMEDhCpjdCg.limits
    const iZssDEtQDdXJUCmzI = WktqjlHFMEDhCpjdCg.isFallbackAdapter
    const VxcJAgQKNK = rbaZOVwcNtyWPfAwE.label
    const kMtfpyFAmnVw = gsZRFYyhBdb.label
    const QrSIQYTziGEZn = wFlAsFGjVNWHFoC.count
    const yOuicVL = KfNSnGriCSY.label
    SRFPSLEtZarJSmyZVId.end();
    yMwNUqVeOottbXSNZlGR.writeBuffer(BLrLE, 0, rSncUGboUyZ);
    const apFKJW = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "QnZUrcrjF",
        size: {
            width: 296,
            height: 135,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const CfWABbmMrrzrOhHqD = apFKJW.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "WMvxDxfnqUKzUrkNyS"
    });
    const Xawyo = CdEvgpsHXunIrIXZXziI.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10424691982115708,
                g: 0.825639746545024,
                b: 0.5414621884359434,
                a: 1.037722713224947
            },
            loadOp: "clear",
            storeOp: "store",
            view: CfWABbmMrrzrOhHqD,
            depthSlice: 7
        }],
        label: "wSNTHcpppq",
        maxDrawCount: 1952621413,
        occlusionQuerySet: mVUmrRHmEpiFC
    });
    const WZojeCMOrAfyJTBbY = Xawyo.label
    Xawyo.setVertexBuffer(0, JDwqTKmuPCHapb);
    const yhCOxMpXDilcSGFgbqmX = doEITR.label
    const EiMUqUFU = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: XCWZATiiCNt
    });
    const JFebxfwmqWrYPwKHQQ = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AAdDg,
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
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "icwojhUtwJlnlpWd",
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
            module: EiMUqUFU
        }
    });
    Xawyo.setPipeline(JFebxfwmqWrYPwKHQQ);
    const KDZgK = SOQWOEBJKcWXEBxNg.info
    const WAGgcPIexQQtigqKq = OVxUyCnWiQdgLMgqH.limits
    const bScxYMR = KfNSnGriCSY.label
    const mBSXJtfRKbFVTFCuFAb = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AhltXoTkvZCgL,
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
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "gCjWTiBBBXwmFnnFKZ",
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
            module: EiMUqUFU
        }
    });
    const rRLFnlBctplsEfQfV = QVIgmDTysDJMUdfTrkI.label
    Xawyo.draw(9);
    const WQYPqyULtvDGVAt = wFlAsFGjVNWHFoC.type
    const FAzDtoJCdblVmQrh = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "gEKfepbjJDJirh",
        size: {
            width: 1491,
            height: 2809,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgb10a2unorm"]
    });
    const GDFlth = FAzDtoJCdblVmQrh.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "weeJHAge"
    });
    const aiLUqps = rgoaqyoktsVT.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9073364552899417,
                g: 1.739524313770315,
                b: 1.6354380089966878,
                a: 0.846166598465723
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GDFlth
        }],
        label: "vLQnmqnz",
        maxDrawCount: 3655425774,
        occlusionQuerySet: jFPJgzzsNz
    });
    const kxDbynIFyru = llCQoxnuPmkEah.label
    const iEKcPctoSahbuERJxrM = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: yMWiRGUaEvnOaidgWFO
    });
    const eRgWnhH = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: AAdDg,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha-saturated"
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
        label: "vXxXU",
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
            module: QMyZIQ
        }
    });
    Xawyo.setVertexBuffer(0, AwVJzvbPaxqlWvo);
    const wvptKrhjlOFPwFSiKN = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r16uint",
        label: "WdqaxIatei",
        size: {
            width: 147,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16uint"]
    });
    const vQGxUuVOhIRmodi = mVUmrRHmEpiFC.type
    const ItyfVylSRLnZB = tNJJVNjjElWaLc.beginComputePass({
        label: "lBfnOeiHycdA"
    });
    const mYnnmUdPehPLeiGLw = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GBnxPUZSPL",
        size: {
            width: 4075,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8uint"]
    });
    const fwooTyEOgw = jFPJgzzsNz.type
    const NwIKlPImuDUFSXjMwU = Xawyo.label
    const jCIaLFCLOllHQI = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "cuyabxtKfpc"
    });
    const EwFMMkXvZw = rgoaqyoktsVT.label
    const saIoxKJINcuWL = mVUmrRHmEpiFC.label
    const UEGBanZgkcH = SOQWOEBJKcWXEBxNg.isFallbackAdapter
    const sJzjnzpPogeacNxxgACG = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "mbWTJUf",
        mappedAtCreation: false,
        size: 108006796,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const wZvYGwwmBIefPVQWq = iMbLHSzND.isFallbackAdapter
    yMwNUqVeOottbXSNZlGR.writeBuffer(BLrLE, 20, WsisGGGVQBhkLDjG);
    const abYqOnADkfTxqBAvk = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "QcuXwzAokTqJOkCDE",
        mappedAtCreation: false,
        size: 43338076,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST
    });
    const OqILAIzhPdsdwt = OVxUyCnWiQdgLMgqH.features
    const qzuzSgG = jFPJgzzsNz.label
    fgJJDuaqU.setBindGroup(0, NoCLqbOtNm);
    const SViqRxcgSKK = OVxUyCnWiQdgLMgqH.features
    const gefhIx = ocZJTjntJcRGeYR.label
    const wZwZakfAlAxxlDLcu = OfgwwPCsE.limits
    const zJWgAbM = kPNrC.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 3,
        baseArrayLayer: 1,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "gmXrqcoRVjImM"
    });
    yMwNUqVeOottbXSNZlGR.writeBuffer(gzIJzny, 14377836, cbKfAHdVthxHghBtTmA);
    aiLUqps.setPipeline(llCQoxnuPmkEah);
    const QVlAbvDnnqf = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "FwmfHtkQ",
        size: {
            width: 2547,
            height: 3250,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const xZBrHDyoFgf = QVlAbvDnnqf.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "IscOglsIJJpkh"
    });
    const pTdXfa = jCIaLFCLOllHQI.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0286499979705344,
                g: 1.1878987923104907,
                b: 1.8750529130459028,
                a: 0.5195533951826066
            },
            loadOp: "load",
            storeOp: "discard",
            view: xZBrHDyoFgf
        }],
        label: "XxtLnWSeTvMCFWEXFrpo",
        maxDrawCount: 2268585846,
        occlusionQuerySet: wFlAsFGjVNWHFoC
    });
    ItyfVylSRLnZB.setBindGroup(0, wRdruqNxA);
    const owAcDhfSdXWGlZSUNn = mBSXJtfRKbFVTFCuFAb.label
    const KKUgYFtOayXwgluJsneE = OVxUyCnWiQdgLMgqH.limits
    const ZAOpwJnKChAjM = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: rbIAukmIvjNMBv
    });
    const wOjlRNpmKAJxwwefCs = jCIaLFCLOllHQI.label
    Xawyo.draw(7);
    const roIWBJsTqKy = jFPJgzzsNz.type
    rbaZOVwcNtyWPfAwE.writeBuffer(BLrLE, 0, OyhuRgvXTm);
    const iRQQePORCUzQLGniPj = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "KUzLTrscbMrxTxzzN.bindGroup",
        layout: KUzLTrscbMrxTxzzN.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: BLrLE
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const wCWujxIqZxCgOeqk = aiLUqps.label
    const oFIsoBXeENXZVU = fgJJDuaqU.label
    const axIjmAhtcMuzoFO = yxPYUIcctDOgRq.features
    const IQtYSwFFBnPMwfLdi = await navigator.gpu.getPreferredCanvasFormat();
    Xawyo.setPipeline(JFebxfwmqWrYPwKHQQ);
    fgJJDuaqU.setBindGroup(0, ApVSINGZVwE);
    const XXFBBg = hsokNxeajrxceVvuhv.label
    const AhXWJTjvYmAQrFTNG = DjXmGHPxUdBeGqcuij.getBindGroupLayout(0);
    yMwNUqVeOottbXSNZlGR.writeBuffer(sJzjnzpPogeacNxxgACG, 14845096, JBhiujIajIycMt);
    const UhDLExEzRfEwjTscnkf = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "KqJzvefZaMwflix",
        size: {
            width: 273,
            height: 319,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const HFJToEvI = UhDLExEzRfEwjTscnkf.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "MiPJftJGbqmmNZn"
    });
    const RFsPLagKL = tNJJVNjjElWaLc.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3721741008433828,
                g: 1.916030817857196,
                b: 0.6650297581465121,
                a: 1.4227737077585614
            },
            loadOp: "clear",
            storeOp: "store",
            view: HFJToEvI
        }],
        label: "YdpSWPNr",
        maxDrawCount: 1751741667,
        occlusionQuerySet: mVUmrRHmEpiFC
    });
    const IXqZfZ = OVxUyCnWiQdgLMgqH.queue
    const LiWbyoyFHQSzcjtf = OVxUyCnWiQdgLMgqH.limits
    const PlxcsiydfwEadsTgqNlS = rgqHMoQWx.features
    const zERsHcCVJqBHFwIw = await navigator.gpu.getPreferredCanvasFormat();
    RFsPLagKL.setPipeline(eRgWnhH);
    KfNSnGriCSY.setBindGroup(0, iRQQePORCUzQLGniPj);
    const XoaqPaDSwUuHc = jCIaLFCLOllHQI.beginComputePass({
        label: "jiszCwpFRPigqFH"
    });
    const hVyIAyLRHnsUuCZywD = qqgVisacnwTiYr.label
    const fPfYbFzPXrIkZ = Xawyo.label
    const lvvxD = OfgwwPCsE.isFallbackAdapter
    const vufOTthZPMBYiWwmD = yMwNUqVeOottbXSNZlGR.label
    const SmuPwyIRLKwIJOI = mVUmrRHmEpiFC.count
    ItyfVylSRLnZB.setPipeline(zGPmE);
    ItyfVylSRLnZB.setPipeline(GQhWNPUxVdALA);
    fgJJDuaqU.setBindGroup(0, eAQeuizkXk);
    XoaqPaDSwUuHc.end();
    const oYGzec = OVxUyCnWiQdgLMgqH.label
    const sYjPqATkIxxYNhgjR = jFPJgzzsNz.type
    const AKWZylKAnYbIRLf = mVUmrRHmEpiFC.count
    const ydKhaNuV = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "czdUOqIDXvrJXDjqMR",
        mappedAtCreation: false,
        size: 253758840,
        usage: GPUBufferUsage.INDEX
    });
    const VlwPefJqzSWdNVmjr = OVxUyCnWiQdgLMgqH.label
    rbaZOVwcNtyWPfAwE.writeBuffer(GlLyyIGuKSZUDWGEHQ, 0, PKMIqHu);
    const bjahPVrkuwCiqyDnNaAv = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "rBfHynfahREyRTxpD.bindGroup",
        layout: rBfHynfahREyRTxpD.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const WKEyqPcyVepexMvMG = await navigator.gpu.getPreferredCanvasFormat();
    const ABskpivQoCwMarvJEFq = YzugSiDhIogf.features
    const yVarqKhRBJjNmexsr = OVxUyCnWiQdgLMgqH.label
    const PuKMNFplouxckxGL = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: GBDjqy
    });
    const BYHChawImqvB = OVxUyCnWiQdgLMgqH.queue
    const DINgoXwBgvYC = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: YugNszyjrNxfxFQr
        },
        label: "oDbRtjBW",
        layout: "auto"
    });
    const KRRhX = jCIaLFCLOllHQI.beginComputePass({
        label: "hQGtndVDdR"
    });
    const rPGEKCcEPr = mVUmrRHmEpiFC.count
    const iBcDKv = JGskYZzJhUwQdA.label
    const FwypHZzBJmNcyYTzD = jFPJgzzsNz.count
    const lkDZkWnGSYcFM = wFlAsFGjVNWHFoC.count
    KRRhX.setPipeline(DjXmGHPxUdBeGqcuij);
    KfNSnGriCSY.end();
    const HbimPCmcwTXXCYa = OVxUyCnWiQdgLMgqH.features
    yMwNUqVeOottbXSNZlGR.submit([LvzlaNnNGlzEfIpvKU]);
    const wVdDV = navigator.gpu.wgslLanguageFeatures
    EGoKjUDnPddVIcXedpQo.writeBuffer(GlLyyIGuKSZUDWGEHQ, 16, PweoiZvYWfMaAOhEAd);
    const xVsglitGTtP = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "udTnGD"
    });
    const WxLAeWmaLiwiDxY = DIvSnaLKfKYoHv.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 9,
        baseArrayLayer: 6,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "hORXYxcyZphcgXqQFH"
    });
    const hhFREEATUX = navigator.gpu.wgslLanguageFeatures
    const BnJtIVhZgqa = DIvSnaLKfKYoHv.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "tXdhzSUfezu"
    });
    const DUGZIfDckjHEXina = rgqHMoQWx.isFallbackAdapter
    fgJJDuaqU.end();
    const PXeEq = await navigator.gpu.getPreferredCanvasFormat();
    const ZeNQfwXCq = navigator.gpu.wgslLanguageFeatures
    RFsPLagKL.setVertexBuffer(0, GlLyyIGuKSZUDWGEHQ);
    const gaBKAJcHigmV = bjNifIZ.info
    const MxAqKcsVKIrLbrEs = ZpKxBwnepHhFvyWKgqbd.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 4,
        format: "bgra8unorm-srgb",
        label: "IThUOrYL"
    });
    KRRhX.setBindGroup(0, NoCLqbOtNm);
    const xECpo = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "fFsgThaizTBW"
    });
    const IemlRlXikpqWshvyp = tNJJVNjjElWaLc.label
    Xawyo.end();
    const QxORkJySrrgWvswZ = OVxUyCnWiQdgLMgqH.createCommandEncoder({
        label: "kcBfgkVAdoWA"
    });
    const WkZZdJowMnglXTilW = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8snorm",
        label: "PeegIqdNU",
        size: {
            width: 1160,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8snorm"]
    });
    const HGvqOEsTxVyXgEJNDc = QxORkJySrrgWvswZ.label
    RFsPLagKL.draw(6);
    const oTrsZ = WRRPlweMiDnhnwwXneCt.limits
    IXqZfZ.submit([XxUNyPTxunGvG]);
    const qifPzGfSuKHxqtoC = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "gnBuSlv",
        mappedAtCreation: true,
        size: 89267084,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const rQQJH = xECpo.finish();
    const gCVOWjHcAkuhNc = OVxUyCnWiQdgLMgqH.limits
    KRRhX.setBindGroup(0, ApVSINGZVwE);
    const QPNqa = nYRpyDYaG.getBindGroupLayout(0);
    IXqZfZ.writeBuffer(GlLyyIGuKSZUDWGEHQ, 0, FGiqQHxKOcRhJlJEqMzi);
    const vMFXMtF = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "qqgVisacnwTiYr.bindGroup",
        layout: qqgVisacnwTiYr.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const nOksZZVql = QxORkJySrrgWvswZ.beginComputePass({
        label: "NqGfbufiEHEKL"
    });
    const FWBecFVOsUUY = xVsglitGTtP.beginComputePass({
        label: "RYrzIraqMn"
    });
    const rGkXYzLyyszuAwHID = dLrUkMUEd.type
    const mUmZyD = SOQWOEBJKcWXEBxNg.isFallbackAdapter
    const JPRjNFl = jhHGeXuuIotSMn.features
    const wZWGBRkmSxkKGucCkMPL = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 1774,
        label: "ZFNRsqZaprkZugegOe",
        type: "occlusion"
    });
    const STTprUGgsqg = FWBecFVOsUUY.label
    const NpitmxzpLVz = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8sint",
        label: "rWsPfIbQMZ",
        size: {
            width: 562,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8sint"]
    });
    const JzviiizR = OVxUyCnWiQdgLMgqH.label
    const dlskAKZZyDwaEgPxkay = cvoXz.label
    const BVctgXwfxTVuNOfcvJnc = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: AZETGFI
        },
        label: "ekuHjZleaDVIM",
        layout: "auto"
    });
    const tNgriELhfNOmHmb = pTdXfa.label
    const ToBuveBRTDjxUroLrX = wFlAsFGjVNWHFoC.type
    const skeFNfo = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8sint",
        label: "jLjifNGwKbyYsSfSy",
        size: {
            width: 983,
            height: 456,
            depthOrArrayLayers: 3
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8sint"]
    });
    const lZNoJdTCfaXGuKDULtez = aiLUqps.label
    IXqZfZ.writeBuffer(BLrLE, 0, NaBnAOjHWjH);
    const HthMpYc = OVxUyCnWiQdgLMgqH.createBindGroup({
        label: "kcJTjvuUJQChW.bindGroup",
        layout: kcJTjvuUJQChW.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: BLrLE
            },
            binding: 1,
            resource: {
                buffer: GlLyyIGuKSZUDWGEHQ
            }
        }]
    });
    const pcLWbItWlUExJxPFZT = hSfZkGmYnaig.label
    const Eyoeh = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: zDnSJedKUhuGnPgW
        },
        label: "IneiedKm",
        layout: "auto"
    });
    const EbbhkXuKBlUOfPDk = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 2752,
        label: "vhnBdLjr",
        type: "occlusion"
    });
    const jnZqB = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8snorm",
        label: "nYGOHhoIdDloZWMvsV",
        size: {
            width: 442,
            height: 657,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["r8snorm"]
    });
    const oeRUgsqrKBVTVdb = EGoKjUDnPddVIcXedpQo.label
    const alygONgJc = HjkWaGMSoTDoGAlub.label
    const EptzDXciyRICaPCPKxZ = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 2335,
        label: "eAkNSNJCQRGjwNUnk",
        type: "occlusion"
    });
    const XNROHLVrqjRsGb = DjXmGHPxUdBeGqcuij.label
    const ibEvrIxO = WRRPlweMiDnhnwwXneCt.info
    const etOLJzBymEkfNCyt = mYnnmUdPehPLeiGLw.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8uint",
        label: "fGjmwuRvthqFzxHHeQ"
    });
    const ChOSFyOfwa = ORxfepf.label
    ItyfVylSRLnZB.end();
    const tQlkvnLOF = OVxUyCnWiQdgLMgqH.createQuerySet({
        count: 1878,
        label: "iBWqERDperiAH",
        type: "occlusion"
    });
    const uMTaqYCLA = OVxUyCnWiQdgLMgqH.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "TXQkEdJVQg",
        size: {
            width: 2421,
            height: 1192,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const QRrNhOlItmLvpVEhEeiR = uMTaqYCLA.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "KjOnka"
    });
    const YtNwHPSuHhpnYnRxe = xVsglitGTtP.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2352207053880764,
                g: 1.3765142452397554,
                b: 1.1469675013740115,
                a: 0.5455609964726025
            },
            loadOp: "load",
            storeOp: "discard",
            view: QRrNhOlItmLvpVEhEeiR
        }],
        label: "pZeDzcutKriz",
        maxDrawCount: 611158354,
        occlusionQuerySet: EbbhkXuKBlUOfPDk
    });
    const RJzyUlLrFtoY = BVctgXwfxTVuNOfcvJnc.getBindGroupLayout(0);
    const NdRDWmN = BVctgXwfxTVuNOfcvJnc.label
    const UHynssHwLQzTPjMMkHnH = rgqHMoQWx.limits
    const TRUYnbPe = OVxUyCnWiQdgLMgqH.createShaderModule({
        label: "vertex",
        code: uhokO
    });
    const nkiKQMBCqxtvMzmLgDnn = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    RFsPLagKL.draw(2);
    YtNwHPSuHhpnYnRxe.end();
    FWBecFVOsUUY.end();
    const IEeBQqsoBTKYu = xVsglitGTtP.finish();
    const VKxejecnuwlkZllBYc = OVxUyCnWiQdgLMgqH.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: lhsVBAXT,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "EDBmkNXaqOWtaRH",
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
            module: zLKTpPz
        }
    });
    const BmFHKeXArbzuL = OVxUyCnWiQdgLMgqH.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: YugNszyjrNxfxFQr
        },
        label: "jWhOkMm",
        layout: "auto"
    });
    const wQuzOBSKqcTrsOPhEd = esSZBPKQM.label
    const QkkwIHKhi = OVxUyCnWiQdgLMgqH.createBuffer({
        label: "wwrLvVcdlIglrCGLt",
        mappedAtCreation: false,
        size: 153755612,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE
    });
    const icUrATcdUATIFy = await navigator.gpu.getPreferredCanvasFormat();
    EGoKjUDnPddVIcXedpQo.writeBuffer(gzIJzny, 11899244, yeacKEAEKcBaxfnWUZxK);

}
main().catch(console.error);