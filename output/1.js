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
// Seed: -5921334685413606466
const shader20 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader19 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray26 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray25 = new Uint8Array([5807, -9844, 1506, -1058, -7161, 5768, -5665, -6223, 2529, -6355, 9019, 7456, -85, 5163, -4671, -4455, -8785, -1308, 9144, -8214, -8173, 9594, -7117, 7300, -3381, 8587, -4347, -2265, -4720, -1307, -1492, -187, 634, 1405, 9751, -1548, -2548, 4919, -6380, -2876, 9953, -6601, 8659, -5463, 9839, 5193, -2352, 4178, -8600, -7061, -6556, -311, 660, 762, 5310, -9254, -9441, -8689, -4307, -7144, 2070, -6329, 5651, -3870, -1656, -8888, 561, -919, 5556, 6401, 1192, -3592, -6476, 1302, -5065, -7503, -9090, 8695, 5349, -9445, -4263, 8430, 4235, 9375, 2103, -5747, -2487, 2892, 6247, 6525, -832, -1471, 3572, 5511, -7711, -5442, 137, 8992, 2114, -603, -776, -2229, 200, 396, 7354, -8150, 254, -4628, -5870, 9492, 9757, -9518, -2586, -1538, 8409, 6244, -1326, 8749, 3533, -1937, 1369, 1402, 6763, 4280, 1349, -6935, -2738, 9387, 8791, -2562, -4968, 1510, 2491, 2488, -7551, 632, -8461, -8981, 6014, -7083, -6413, 9698, 4768, -8672, -6626, 8462, -8598, -6774, 4861, 8946, -4193, 5143, -2646, 9551, 8650, -6004, -3536, -3539, 2956, -2918, 8765, 8641, 3974, 5981, 2377, -7976, 3869, -1462, -2929, -9343, -5811, 3300, -8157, 3133, -8198, 1329, -1883, 5326, 9045, 5799, 9097, 6064, 1761, 5692, 5259, -56, 2456, 5919, 309, -1819, 5425, 8001, -7980, 7975, 8974, 375, -1024, -3888, -632, 5681, -5250, 4466, 9999, -599, 7557, -867, -5207, 9686, -6211, 2718, 5557, 2868, 6070, -5952, -7085, -1375, 4869, -1048, 3146, 2870, 595, 7675, 7428, 5960, 469, -7703, -4143, -9445, 3412, 3900, 9162, -3031, 8821, 7654, 6142, 8022, -4651, -9770, 8210, 9757, -6929, -6302, -672, -5313, -3670, -2985, -1159, -5095, 2340, 1516, 6897, -7070, -2401, 4616, -1171, 4309, -5885, -2681, 2216, -8784, -5387, -3283, -5753, 748, -264, -429, -1870, -3825, 475, -2091, -8155, -1836, 5789, 5342, 1365, 1531, 874, -1092, -8696, 2961, 126, -4581, -7061, 9205, 3938, -9189, -7537, -9672, -6941, 6858, 122, -386, 259, -3127, 8002, 9720, 4200, -6261, -7660, 2847, 7131, 9207, 9815, 5836, 8557, -3024, -4530, 3353, 8143, 1615, 702, 2746])
const typedArray24 = new Int8Array([-1713, -6363, -5520, 5594, -8508, 393, -9606, -7656, -8348, 8255, -6789, -2292, -3162, 3398, 4411, -2813, 3648, -4929, -8748, -4547, -128, -3099, 1650, -5368, -4303, 450, -8444, 1327, 464, 6462, 3087, -3625, -6251, -3916, -5273, 623, 2885, 6498, -5817, 1552, 6103, -3055, -435, -3402, 7872, -1952, -9732, 4488, -366, -9562, -7093, -3557, 499, -7336, -9149, 4300, -7845, -4175, 2255, 8800, -641, -8852, 6736, 7715, -5309, 3979, -5441, 3114, 4289, 8110, -9723, 7732, -3589, 2394, -2313, -7415, -3904, 2956, 9442, -3141, -5861, 7612, 4775, -3402, -5039, -7974, -9670, 6765, 3170, 6014, 718, -2112, 7019, 4519, -4903, 5031, 7075, -3729, 1516, 563, 66, -7311, -9310, 8613, -951, -8231, 9545, 8805, -4038, 6565, -7042, 2183, 9314, -4746, 7557, -1647, -3472, -6247, 8306, -649, -4041, -1453, 1737, 3734, -7539, 7701, -2924, 2612, 6591, -6167, -6483, -6796, 9956, 8076, -5226, -1663, 8039, 9871, -2075, -5803, -2601, 828, 5804, 9356, -4801, 344, -5011, 6167, 9517, -490, -86, -7744, -3184, 6527, -6905, -799, -290, -4609, -6980, -3036, -374, -9962, 6198, -3558, 7346, -7934, 2407, 9284, -4066, -351, 5057, 3049, 4403, -4275, -3698, 3775, 1467, -5913, 4609, 2221, 2899, 3879, 394, -7193, -318, 2358, 4919, -5842, -5624, 5891, -7220, -3197, -6152, 8237, 1227, -4208, 2354, -447, 5470, 8935, -7965, -2065, -8071, 6976, -9750, 4301, -4875, -5436, -8333, -4692, -9214, 5663, 4900, 6467, 6196, -1398, -9088, 8900, -392, -5929, -2560, 4805, 5142, 9773, -4161, -7613, 2374, -7757, -2137, -4178, -759, -7979, 1781, 9856, 5993, 3782, 3049, -7593, 6951, 2122, -3947, -9403, -9029, -9461, 8558, 4009, 3343, 9060, -5830, -3381, 4457, 5581, 2746, -2484, -8580, -7373, -4907, -4252, -925, -1262, -8687, -6082, 7434, 5379, -356, -5277, 9562, 2502, -7451, 7806, 9421, -5391, 7389, -614, 4433, 7277, 7118, -9390, 3736, -194, 3139, -6944, -3522, -3710, -4357, 5092, 5310, -4633, 5760, -6110, 2390, -4096, -331, 499, 6683, -3081, -9332, -2857, 5430, 4373, -1523, -3231, -7803, 2917, -1426, -5149, 488, -3669, -1006, 6832, 4981, 5240, -3312, 9450, 1078, -9634, 7908, 5243, -4033, 9296, -133, 4607, 9863, 8683, 6426, 5756, 19, -7804, 380, -5767, -9367, -7912, 585, -2751, -9239, -1023, -4178, -500, -5882, 2145, 5355, -6824, -5575, -2114, 461, 3859, 3871, 3467, -8982, 9269, 603, 7629, -4963, -9255, -3281, 6385, 9001, -1903, -2757, 2534, 1238, -9146, 7427, -3621, -2813, 3266, 5414, -6050, -3561, 324, -3812, -4930, 1925, -134, -8379, 9420, -1171, 990, 526, -5584, 8500, 343, 8217, -9035, -4464, 9009, -8216, -542])
const shader18 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader17 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader16 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray23 = new Float32Array([-1507])
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Int8Array([8576, 3153, -4290, 5491, -1710, -6757, -8475, -2935, -8809, -7398, -5571, 5936, -2212, 1647, -1116, 218, -7807, 2381, 4366, -8903, 5070, 5428, 7751, -6831, 1938, 1196, -5018, 4315, 8403, -2452, -4617, 5958, -3142, 6413, 5121, 987, -1912, -3943, -184, 7204, 7389, 1875, 8335, -7442, 8181, 7179, -4133, 3593, -1132, 976, -1240, -9497, -5599, -8071, -1760, 5437, 4897, -1547, 1068, -2675, -8153, 8095, -3950, -5503, -9651, 80, -3020, -7739, 7434, -6719, 4634, 3021, 3784, -3632, -9790, -8838, 1109, 9988, -7551, -596, -5047, -5393, 8811, -2200, -7542, 4977, 6403, 9629, 5037, 8147, 126, 9145, 8965, 7350, -6006, -2539, 2592, -7407, -603, -8351, -5122, -1939, -1359, -5495, 7869, -2669, -3482, 8958, 746, 1491, 374, -1445, 6176, 9373, 5622, -5005, 3903, -380, 284, 8119, -2540, 3218, 3587, 2312, 2551, -4161, 3238, 7861, 415, 2445, -2910, 4893, -1274, 3661, -3321, -6245, 4817, -8603, 1886, 5382, -1208, -5603, -6304, 1967, 9621, -4908, -3505, -9818, 3549, 4465, -3648, -3306, 5371, 3852, 1524, -9199, 6988, -8755, -1461, -7478, 2930, 2866, 6729, 3280, -4008, -2094, 8283, 4076, 5641, -1510, 3371, 4497, 5685, 717, 2792, 6269, 7369, 8620, 5948, -7489, -5242, -8526, 5407, 8454, 7140, 7452, -9413, -9892, -7289, -5940, 8232, -1415, 9520, -7462, -7369, -8393, 5768, -7992, 5519, -3724, 318, -4550, -5917, 4081, 5706, -8492, 6197, 7316, 9921, -4389, -8162, 4721, -657, 2337, 5777, 116, 7289, -2507, 6990, -6331, -1373, 2771, 7093, 8874, 269, -4, -3000, 5236, 3039, 1171, -4317, -4823, -6222, -6237, -2421, 7243, 5959, 8839, -1823, 7827, 6850, 9124, -2205, -5129, -8710, 2337, 343, -8304, 7430, 297, -7302, -2264, 1097, 9040, 6695, 3122, 8178, 5194, 7721, -6811, -3311, 7933, -1369, 4943, -8958, -1874, -4674, -4628, -2379, 5529, -1228, 981, 8644, -5894, 4937, -392, 4793, 8463, 8301, -7681, -270, 4402, 5298, -1357, 9475, -7810, 4857, -1679, -362, 9665, -1623, -7324, 4459, -2215, -1274, -7929, -8718, 506, -6448, -1032, 2695, 9664, 4691, -7440, 8324, -7544, 4541, 1501, 7020, 8739, -1595, -608, -1057, -4699, -6391, -92, 1006, 7645, -8821, 9795, -5413, 8961, -1612, 2221, -7909, -1568, 8868, -3029, 2177, -304, 842, 8405, -8365, -1709, -8481, -7458, -7139, 6519, -1156, 9074, 2875, -6994, 6742, 1601, -9097, 3006, 8148, 8020, 4602, 7213, 4238, 6277, 9818, 3906, 11, 4808, -8232, 3895, -9465, 5986, 2269, -856, 7430, 6294, 1364, 1927, -896, -5009, 3211, 3143, 7910, -6295, 4495, -9729, -8687, 1305, 7050, -3859, -8715, 4096, -1141, -4336, -254, 3400, -830, 1118, -4071, -120, 1001, 7377, -8048, 6896, -8007, -5993, -3348, -3930, -9336, -4076, 5918, -8402])
const shader15 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray20 = new Int8Array([-4302, 4936, 9675, 5653, 4738, 1751, -7628, -3851, -8803, 540, -7580, -7902, -6450, -2244, 11, 7817, -1291, -9500, 2164, -7318, 5137, -141, 7101, 444, -8365, -5235, -4796, -8512, -6278, 7023, 4706, -4488, 3088, 1800, -3088, -5897, 7927, -4697, 1561, 4706, -2972, -8686, 8707, 8751, 7758, 9985, -9747, 3187, -5141, -5095, 8158, -4956, -5244, -3941, 127, -7493, -8048, -7098, -2165, -319, 9934, -3369, -9182, 5899, -2478, -9, -2992, 2231, -5119, 7997, 1673, 6280, 4836, 337, -9285, 4527, 4721, -6391, -430, -1865, 7907, -125, -4576, -9825, -8916, 8606, -5634, 7238])
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray18 = new Uint8Array([2399, -9626, -354, -3282, 7932, 7482, -2796, -7406, 2436, -2701, -9136, 6802, 5448, 7908, 675, -3586, 5518, 8731, 7371, -7422, -6408, -5966, 6770, 9333, -8271, -3240, -1629, 5404, 9696, -3991, 674, -7742, -8802, 4310, -2740, -7537, 8482, -3044, 558, -6010, -3896, 7989, 5789, -9226, -7650, -6046, 6266, -10, -9711, -7334, 997, 7922, 6312, 4341, 7437, 2538, 830, -9037, 2241, 3837, 1039, 9589, 5613, 2363, 4030, 1579, 6483, 9567, -6206, 8309, 3071, 6186, 9693, -9260, 2232, -7430, -9064, -5820, 4757, -7326, -8656, 3135, 9930, 5963, 9334, 798, 7268, -6560, 2659, -6546, 5898, 5489, -8977, 4775, -1649, 1132, -9446, -9217, -4403, -6455, -7537, -5609, 9228, -5687, 3233, -8576, 5308, -168, 8406, -9400, -9753, -9791, -1794, -864, 8682, -9041, -4532, -6626, -8121, -5712, -8130, 4399, -5425, -4502, -8441, 6331, -5192, -460, 3006, -7431, -8627, -9333, -7353, 4764, -5745, 3616, -588, -3590, 7028, -5986, 5399, -7874, 8306, -8545, -8724, 5759, 8297, 4723, 7732, -7116, 9810, 6963, 2259, 2956, 9042, -624, -9572, -4885, -6846, 4917, -2513, -8735, 4157, 1484, -5318, 2335, 1752, 7602, 1380, 9136, -4579, 5864, -1834, -8453, 4105, -8018, 7700, 7308, 937, 6245, 9358, -1252, 9801, 3033, 143, 1128, 2682, -4042, -8829, 6383, -9471, -7310, -3335, 3396, -2274, -4670, -6446, 8233, 2672, 2728, 2354, 6297, -6292, -3991, -2259, -9782, 6040, -9352, 9911, 6492, -177, -8733, -3885, -1398, -667, -6510, -6369, -108, -4500, 5582, 8936, -3377, -2080, 3101, -8682, 3759, 3669, 2808, 4951, 3072, 544, 3360, 1697, -3348, 6505, -5140, -155, 9772, -981, -7337, 6388, 6178, -5262, -7047, -9310, -18, 5091, -6026, -8975, -6580, 9900, -3013, 4848, 1021, 407, 4500, -445, -7890, -8324, 4594, -683, -8677, 6436, 8369, -4883, -9394, 2110, 3891, -751, 6894, 2075, 4710, 9983, -8837, 9389, -1225, 1703, -1033, -3006, -8228, 7648, 1638, -4985, -3110, 5184, 2227, 9063, 1634, 3948, -6316, -4462, 536, -7487, -5362, 8049, -4554, -3552, 1256, -490, 5069, 6030, 7212, -6680, 8870, 3341, 8801, 1774, 7116, -6380, 3231, -5825, 2259, -5626, -6348, 6315, 9433, -4648, -9299, -7835, -3439, -1560, -1079, 5280, 2533, -9019, 846, -9124, 9390, -6437, 7362, 7741, 2834, 5343, -3802, 1557, -5333, -5560, 3111, 8739, -5962, 8751, 8325, 1029, 3391, -3082, 5566, 4912, 9475, -8781, -3643, -1931, -7789, 3402, 763, 8478, -7186, -5085, -907, -6487, -9351, 7025, 5475, 1127, 1662, 7476, 9189, 3830, -2182, -761, -2010, -1350, -1629, 5252, -7913, -5033, -1744, 9371, 5448, -5060, -7726, 3863, -9157, 7154, -2564, -2111, -4664, -5983, -5165, -5455, -1416, -8712, -3070, -8296, 1187, -7069, -6143, 7917, 5860, -9905, -1982, -7890, 5081, 5932, -3045, -5345, -3747, 4255, 8219, -112, -2202, 8079, -8108, 9107, -6768, -1777, -657, -3658, -1658, -4754, 3068])
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Float32Array([-7115, 2300])
const typedArray15 = new Int8Array([9121, 37, 7319, -2280, -8328, 2264, -4772, 5788])
const typedArray14 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray12 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray11 = new Float32Array([-9786, -100, 300, -824, 951, -5783, 6714, -5909, 5682, -2477, -6664, 3750, 2092, -3625, -4179, -2933, 2810, -2146, 9384, -7601, -3620, -168, 811, 2127, 6552, 4045, -8174, 5908, 4653, -9406])
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray9 = new Float32Array([-5041])
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray7 = new Uint8Array([-7539, -5850, -4251, -6808])
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray5 = new Int8Array([-1245, 4273, 3110, 4131, -2078, -3161, -7578, -1181, -9401, -2608, -801, -1353, -8903, 2511, -7280, -4450, 3431, 3891, 6140, -1565, 2939, -9752, -981, -2030])
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray3 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray2 = new Int8Array([-7283, 1575, -7767, -7412, 2700, 1086, 7292, -6351, 6106, -2155, -2898, 853])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray0 = new Float32Array([-1, 4795, 2631, 3106, -6447, -3968, 5647, 8648, 7454, 5640, -5500, -6282])
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const GPUDevice0 = await GPUAdapter0.requestDevice();
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
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 3213,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const string1 = GPUQuerySet0.count
    const string2 = GPUQuerySet0.count
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture0",
        size: {
            width: 2726,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8snorm"]
    });
    const GPUAdapterInfo0 = GPUAdapter0.info
    const string3 = GPUComputePipeline0.label
    const string4 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8snorm",
        label: "GPUTextureView0"
    });
    const string5 = GPUTextureView0.label
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    const string6 = GPUComputePassEncoder0.label
    const GPUQueue0 = GPUDevice0.queue
    const string7 = GPUQueue0.label
    const string8 = GPUQuerySet0.count
    const string9 = GPUDevice0.label
    GPUComputePassEncoder0.end();
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 106458480,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4518280, typedArray0);
    const GPUSupportedFeatures0 = GPUAdapter0.features
    const GPUSupportedLimits0 = GPUDevice0.limits
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder1 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline0);
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray1);
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder1.dispatchWorkgroups(161, 161, 58);
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
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string10 = GPURenderPipeline0.label
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture1",
        size: {
            width: 567,
            height: 1965,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9719901616246862,
                g: 1.6603166988470717,
                b: 1.971077954105494,
                a: 0.4367132673587828
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 2417243355,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures1 = GPUAdapter0.features
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUSupportedFeatures2 = GPUAdapter0.features
    const string11 = GPUDevice0.label
    GPUComputePassEncoder1.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUCommandBuffer2 = GPUCommandEncoder2.finish();
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUCommandBuffer3 = GPUCommandEncoder3.finish();
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture2",
        size: {
            width: 802,
            height: 1680,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.18060821636040858,
                g: 0.8966971687009506,
                b: 1.772279991847326,
                a: 0.5137570643798004
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 1092613149,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder1.end();
    const GPUSupportedLimits2 = GPUAdapter0.limits
    GPUQueue0.submit([GPUCommandBuffer2]);
    const string12 = GPUQuerySet0.label
    const string13 = GPUQuerySet0.type
    const string14 = GPUTextureView2.label
    const string15 = GPUTextureView0.label
    GPUQueue0.writeBuffer(GPUBuffer1, 4, typedArray2);
    const GPUAdapterInfo1 = GPUAdapter0.info
    const GPUSupportedLimits3 = GPUAdapter0.limits
    const GPUComputePassEncoder2 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline0);
    GPUQueue0.submit([GPUCommandBuffer3]);
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const string16 = GPUTextureView0.label
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string17 = GPUQuerySet0.label
    const GPUBindGroupLayout1 = GPUComputePipeline1.getBindGroupLayout(0);
    const string18 = GPUDevice0.label
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string19 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer4 = GPUCommandEncoder4.finish();
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture3",
        size: {
            width: 623,
            height: 75,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView3 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba16float",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7503624047536868,
                g: 0.495017754802491,
                b: 1.6254603497845774,
                a: 1.7677374407189217
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView3,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3471069293,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup0);
    const string20 = GPURenderPipeline0.label
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string21 = GPUComputePassEncoder3.label
    GPUComputePassEncoder3.end();
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const string22 = GPUQuerySet0.count
    const GPUComputePassEncoder4 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.end();
    const GPUComputePassEncoder5 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray3);
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
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer5 = GPUCommandEncoder5.finish();
    const string23 = GPUTextureView0.label
    const GPUSupportedFeatures4 = GPUDevice0.features
    const string24 = GPUComputePipeline0.label
    const string25 = GPUComputePassEncoder5.label
    const string26 = GPUQuerySet0.count
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const string27 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture4",
        size: {
            width: 1402,
            height: 1068,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture5",
        size: {
            width: 1550,
            height: 2871,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView4 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7977034873433577,
                g: 0.9638725395590775,
                b: 0.45566906868460144,
                a: 1.1849506419587506
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 2225134684,
        occlusionQuerySet: GPUQuerySet0
    });
    const string28 = GPURenderPassEncoder3.label
    const string29 = GPUComputePipeline0.label
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer6 = GPUCommandEncoder8.finish();
    const string30 = GPUTextureView3.label
    const GPUSupportedLimits4 = GPUAdapter1.limits
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup0);
    const string31 = GPUComputePipeline1.label
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline1",
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
            module: GPUShaderModule2
        }
    });
    const GPUTextureView5 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 8,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView5"
    });
    const string32 = GPUQuerySet0.type
    GPUComputePassEncoder5.end();
    const GPUSupportedLimits5 = GPUDevice0.limits
    const string33 = GPUQueue0.label
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline2",
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
    const GPUComputePassEncoder6 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const string34 = GPUComputePassEncoder6.label
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "GPUTexture6",
        size: {
            width: 1814,
            height: 3857,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView6 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.11590769751593588,
                g: 1.849081008513359,
                b: 1.6964014907391771,
                a: 1.5142022481422575
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 161882174,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline2);
    const string35 = GPUDevice0.label
    GPUQueue0.submit([GPUCommandBuffer4]);
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline3",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder4.draw(10);
    const GPUSupportedFeatures5 = GPUDevice0.features
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUComputePassEncoder9 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const string36 = GPURenderPipeline0.label
    const string37 = GPURenderPassEncoder4.label
    const string38 = GPUQuerySet0.label
    const GPUSupportedFeatures6 = GPUAdapter0.features
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUComputePassEncoder10 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const GPUTextureView7 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView7"
    });
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
    const string39 = GPUDevice0.label
    GPUQueue0.writeBuffer(GPUBuffer2, 0, typedArray5);
    const GPUSupportedLimits6 = GPUDevice0.limits
    const string40 = GPUCommandEncoder9.label
    const string41 = GPUQuerySet0.label
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedFeatures7 = GPUAdapter2.features
    GPUComputePassEncoder6.end();
    const GPUCommandBuffer7 = GPUCommandEncoder7.finish();
    const GPUAdapterInfo2 = GPUAdapter3.info
    const GPUAdapterInfo3 = GPUAdapter2.info
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray6);
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
    const string42 = await navigator.gpu.getPreferredCanvasFormat();
    const string43 = GPUQueue0.label
    GPURenderPassEncoder4.draw(3);
    const GPUQueue1 = GPUDevice0.queue
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader3
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUComputePassEncoder11 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader4
    });
    GPUComputePassEncoder9.end();
    const string44 = GPUQueue1.label
    const string45 = GPURenderPassEncoder4.label
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const GPUSupportedLimits7 = GPUDevice0.limits
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 3780768,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX
    });
    const string46 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedLimits8 = GPUDevice0.limits
    const GPUSupportedFeatures8 = GPUDevice0.features
    const string47 = GPURenderPipeline1.label
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader6
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 28, typedArray7);
    GPURenderPassEncoder4.end();
    const GPUBindGroupLayout2 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 16712468,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    });
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus-stencil8",
        label: "GPUTexture7",
        size: {
            width: 1732,
            height: 2645,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus-stencil8"]
    });
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture8",
        size: {
            width: 3493,
            height: 1331,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView8 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9822913322862667,
                g: 0.08741998145955798,
                b: 0.04484236947493625,
                a: 1.8578222455290443
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 892638105,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer3);
    const string48 = GPUQueue0.label
    const string49 = GPUQuerySet0.count
    const string50 = GPUQuerySet0.label
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader7
    });
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer8 = GPUCommandEncoder9.finish();
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray8);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    const GPUComputePassEncoder12 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const string51 = GPUComputePassEncoder12.label
    const GPUSupportedLimits9 = GPUAdapter3.limits
    const GPUTextureView9 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "depth24plus-stencil8",
        label: "GPUTextureView9"
    });
    GPUComputePassEncoder12.end();
    const string52 = GPUComputePassEncoder8.label
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer3);
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture9",
        size: {
            width: 1015,
            height: 177,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView10 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10901982054243087,
                g: 1.7695230626981262,
                b: 1.7811132315290743,
                a: 1.4633799982248046
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView10
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 272328339,
        occlusionQuerySet: GPUQuerySet0
    });
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule6,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.RED
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture10",
        size: {
            width: 488,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    GPUQueue0.submit([GPUCommandBuffer7]);
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 3902,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer2);
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "dst"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline5",
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
    const string53 = GPUComputePassEncoder8.label
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader8
    });
    GPUComputePassEncoder10.end();
    const GPUCommandBuffer9 = GPUCommandEncoder12.finish();
    const string54 = GPUComputePassEncoder8.label
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer2);
    const GPUTextureView11 = GPUTexture10.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPUTextureView12 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView12"
    });
    const GPUComputePassEncoder13 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const string55 = GPUComputePipeline3.label
    const GPUSupportedLimits10 = GPUAdapter0.limits
    GPURenderPassEncoder5.end();
    GPURenderPassEncoder6.end();
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "GPUTexture11",
        size: {
            width: 2599,
            height: 1046,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba32sint"]
    });
    GPUQueue1.writeBuffer(GPUBuffer1, 12, typedArray9);
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string56 = GPUComputePipeline4.label
    const GPUCommandBuffer10 = GPUCommandEncoder15.finish();
    GPUComputePassEncoder8.end();
    const GPUCommandBuffer11 = GPUCommandEncoder10.finish();
    GPUComputePassEncoder13.end();
    const boolean3 = GPUAdapter6.isFallbackAdapter
    const GPUAdapterInfo4 = GPUAdapter2.info
    const GPUSupportedLimits11 = GPUDevice0.limits
    const GPUSupportedFeatures9 = GPUAdapter1.features
    const string57 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture12",
        size: {
            width: 311,
            height: 882,
            depthOrArrayLayers: 48
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView13 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "r8unorm",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder14.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.42010907039663214,
                g: 0.6136060824039142,
                b: 0.649969127235382,
                a: 0.9366435380721589
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 1077452513,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
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
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUSupportedLimits12 = GPUDevice0.limits
    const string58 = GPUTextureView13.label
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader10
    });
    const string59 = GPURenderPipeline1.label
    const GPUComputePassEncoder14 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const GPUSupportedLimits13 = GPUAdapter4.limits
    const string60 = GPUCommandEncoder11.label
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder14.dispatchWorkgroups(62, 219, 56);
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture13",
        size: {
            width: 444,
            height: 1000,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUSupportedFeatures10 = GPUDevice0.features
    const GPUSupportedLimits14 = GPUAdapter5.limits
    const GPUTextureView14 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 44,
        baseArrayLayer: 11,
        mipLevelCount: 3,
        baseMipLevel: 4,
        format: "rgb10a2unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline7",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    const boolean4 = GPUAdapter2.isFallbackAdapter
    const string61 = GPUQuerySet1.count
    GPURenderPassEncoder7.draw(7);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPURenderPassEncoder7.end();
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    GPUQueue0.submit([GPUCommandBuffer5]);
    const GPUQueue2 = GPUDevice0.queue
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline3);
    const string62 = GPUQuerySet0.type
    const string63 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture14",
        size: {
            width: 95,
            height: 240,
            depthOrArrayLayers: 40
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView15 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg16float",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5098604494266634,
                g: 1.6988030274959125,
                b: 0.3230932752379654,
                a: 0.6965985628588001
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView15,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 984730381,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst-alpha",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer0);
    const GPUTextureView16 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 14,
        baseArrayLayer: 5,
        mipLevelCount: 3,
        baseMipLevel: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView16"
    });
    GPURenderPassEncoder8.end();
    const string64 = await navigator.gpu.getPreferredCanvasFormat();
    const string65 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader11
    });
    const GPUCommandBuffer12 = GPUCommandEncoder14.finish();
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 526,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPUSupportedLimits15 = GPUAdapter3.limits
    GPUComputePassEncoder11.end();
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16sint",
        label: "GPUTexture15",
        size: {
            width: 1406,
            height: 1785,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16sint"]
    });
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray10);
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
    const GPUSupportedFeatures11 = GPUDevice0.features
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const string66 = GPUTextureView13.label
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture16",
        size: {
            width: 1065,
            height: 346,
            depthOrArrayLayers: 41
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView17 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6926602779838287,
                g: 1.3795754192308234,
                b: 0.38841059587187665,
                a: 1.8045780003380862
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 3808949620,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer1);
    const string67 = GPURenderPassEncoder9.label
    const GPUSupportedLimits16 = GPUAdapter0.limits
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedLimits17 = GPUAdapter6.limits
    GPUComputePassEncoder14.end();
    const GPUCommandBuffer13 = GPUCommandEncoder11.finish();
    const GPUComputePassEncoder15 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup1);
    const string68 = GPUQuerySet2.type
    const GPUSupportedFeatures12 = GPUDevice0.features
    const string69 = GPUComputePassEncoder15.label
    GPURenderPassEncoder9.end();
    const GPUCommandBuffer14 = GPUCommandEncoder6.finish();
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader13
    });
    GPUComputePassEncoder15.end();
    const GPUQueue3 = GPUDevice0.queue
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture17",
        size: {
            width: 206,
            height: 616,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView18 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 9,
        format: "bgra8unorm",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7191103715182405,
                g: 1.0432812304178527,
                b: 1.9399085843452464,
                a: 0.9734663603161977
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 2651453195,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline4);
    GPURenderPassEncoder10.draw(10);
    const string70 = GPURenderPassEncoder10.label
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture18",
        size: {
            width: 908,
            height: 304,
            depthOrArrayLayers: 26
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 77133896,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX
    });
    const string71 = GPUQuerySet0.count
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 2321,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder16.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const string72 = GPUComputePassEncoder16.label
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup3);
    const string73 = await navigator.gpu.getPreferredCanvasFormat();
    const string74 = GPUCommandEncoder13.label
    const GPUQueue4 = GPUDevice0.queue
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    GPUQueue1.writeBuffer(GPUBuffer4, 2507356, typedArray11);
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 2045,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule4
        }
    });
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 230181104,
        usage: GPUBufferUsage.UNIFORM
    });
    const string75 = GPURenderPassEncoder10.label
    GPUQueue3.submit([GPUCommandBuffer6]);
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray12);
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
    const string76 = GPUComputePipeline2.label
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline1);
    const GPUQueue5 = GPUDevice0.queue
    const string77 = GPUDevice0.label
    const string78 = GPUQuerySet4.count
    const string79 = GPUQuerySet0.count
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline5);
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray13);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder16.dispatchWorkgroups(59, 122, 1);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray14);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    const string80 = GPUCommandEncoder16.label
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "GPUTexture19",
        size: {
            width: 343,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2uint"]
    });
    GPURenderPassEncoder10.draw(2);
    const string81 = GPUComputePassEncoder16.label
    GPURenderPassEncoder10.draw(6);
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const string82 = GPURenderPipeline5.label
    const GPUSupportedLimits18 = GPUAdapter5.limits
    GPUQueue3.writeBuffer(GPUBuffer2, 20, typedArray15);
    GPUQueue5.writeBuffer(GPUBuffer2, 4, typedArray16);
    const GPUSupportedLimits19 = GPUAdapter7.limits
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline4);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline2);
    const string83 = GPUDevice0.label
    const GPUComputePassEncoder17 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    GPUQueue0.submit([GPUCommandBuffer13]);
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer5);
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline0);
    const GPUTextureView19 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView19"
    });
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture20",
        size: {
            width: 590,
            height: 818,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView20 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1061436473934825,
                g: 1.5756809709855322,
                b: 0.34167116804903674,
                a: 1.986418966602877
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView20,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 587747448,
        occlusionQuerySet: GPUQuerySet2
    });
    const string84 = GPUQuerySet2.label
    GPURenderPassEncoder10.draw(2);
    const GPUSupportedFeatures13 = GPUAdapter0.features
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline4);
    const string85 = GPUCommandEncoder18.label
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline6);
    GPUQueue4.writeBuffer(GPUBuffer1, 0, typedArray17);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder16.dispatchWorkgroups(164, 22, 17);
    GPUQueue2.writeBuffer(GPUBuffer4, 13392184, typedArray18);
    GPUComputePassEncoder17.setBindGroup(0, GPUBindGroup0);
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture21",
        size: {
            width: 494,
            height: 33,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView21 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r8unorm",
        label: "GPUTextureView21"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder19.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.379642746600583,
                g: 0.4623831011415498,
                b: 1.7302000132555972,
                a: 1.121863123727559
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView21,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 2567774303,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer2);
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "stencil8",
        label: "GPUTexture22",
        size: {
            width: 3773,
            height: 590,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["stencil8"]
    });
    const string86 = GPUQuerySet1.type
    GPUComputePassEncoder17.end();
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedFeatures14 = GPUDevice0.features
    GPURenderPassEncoder11.end();
    const string87 = GPUTextureView16.label
    GPURenderPassEncoder12.end();
    GPUQueue5.submit([GPUCommandBuffer12]);
    const string88 = GPUTextureView11.label
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUBindGroupLayout3 = GPUComputePipeline5.getBindGroupLayout(0);
    const GPUSupportedFeatures15 = GPUDevice0.features
    const string89 = GPUQuerySet0.type
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray19);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
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
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const GPUSupportedFeatures16 = GPUDevice0.features
    const string90 = GPUCommandEncoder13.label
    const string91 = GPUDevice0.label
    const string92 = GPURenderPassEncoder10.label
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 185274868,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder16.dispatchWorkgroups(157, 142, 60);
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 3279,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 2583,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline10",
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
    GPURenderPassEncoder10.draw(5);
    const string93 = GPURenderPassEncoder10.label
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder16.dispatchWorkgroups(60, 145, 45);
    const string94 = GPUQuerySet0.type
    const GPUTextureView22 = GPUTexture10.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView22"
    });
    GPURenderPassEncoder10.draw(1);
    GPUQueue0.writeBuffer(GPUBuffer0, 7462212, typedArray20);
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUSupportedLimits20 = GPUAdapter1.limits
    const string95 = GPURenderPipeline4.label
    const GPUBindGroupLayout5 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 2323,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUSupportedFeatures17 = GPUAdapter8.features
    const string96 = await navigator.gpu.getPreferredCanvasFormat();
    const string97 = GPUQuerySet4.count
    GPURenderPassEncoder10.end();
    const GPUCommandBuffer15 = GPUCommandEncoder13.finish();
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 2386,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup8);
    const GPUSupportedFeatures18 = GPUAdapter6.features
    const string98 = GPUQuerySet7.count
    const string99 = GPURenderPipeline5.label
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: true,
        size: 10585140,
        usage: GPUBufferUsage.MAP_READ
    });
    const GPUShaderModule15 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader15
    });
    const GPUComputePassEncoder18 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 1546,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const string100 = GPUCommandEncoder20.label
    const string101 = GPUCommandEncoder19.label
    const boolean5 = GPUAdapter2.isFallbackAdapter
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture23",
        size: {
            width: 133,
            height: 38,
            depthOrArrayLayers: 55
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView23 = GPUTexture23.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7333984130634426,
                g: 0.9099488173980936,
                b: 0.6465225582756775,
                a: 1.9600098558567152
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23,
            depthSlice: 4
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 1781096505,
        occlusionQuerySet: GPUQuerySet5
    });
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer3);
    const string102 = GPUDevice0.label
    const GPUSupportedLimits21 = GPUDevice0.limits
    const GPUSupportedLimits22 = GPUAdapter2.limits
    const GPUCommandBuffer16 = GPUCommandEncoder21.finish();
    const string103 = GPUComputePassEncoder18.label
    GPUQueue2.submit([GPUCommandBuffer8]);
    const string104 = GPUCommandEncoder17.label
    const GPUSupportedLimits23 = GPUAdapter5.limits
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "GPUTexture24",
        size: {
            width: 1062,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2uint"]
    });
    const string105 = GPURenderPipeline8.label
    const string106 = GPUTextureView23.label
    const string107 = GPUComputePipeline0.label
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline4);
    GPURenderPassEncoder13.end();
    const GPUTextureView24 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView24"
    });
    const string108 = GPUQuerySet3.type
    GPUQueue2.writeBuffer(GPUBuffer0, 36937040, typedArray21);
    const string109 = GPUQueue1.label
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 1057,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits24 = GPUDevice0.limits
    const string110 = GPUQuerySet1.label
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray22);
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
    const string111 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 225712180,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 3967,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup11);
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture25",
        size: {
            width: 244,
            height: 236,
            depthOrArrayLayers: 6
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView25 = GPUTexture25.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView25"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5306587242034662,
                g: 0.387826175473994,
                b: 1.6207641596663478,
                a: 1.8278233690663401
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView25,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 2829493801,
        occlusionQuerySet: GPUQuerySet5
    });
    const string112 = GPURenderPassEncoder14.label
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg11b10ufloat",
        label: "GPUTexture26",
        size: {
            width: 2591,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg11b10ufloat"]
    });
    const GPUSupportedFeatures19 = GPUAdapter6.features
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray23);
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture27",
        size: {
            width: 670,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8sint"]
    });
    const string113 = GPUTextureView8.label
    const GPUBindGroupLayout6 = GPUComputePipeline7.getBindGroupLayout(0);
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule13
        }
    });
    const string114 = GPUDevice0.label
    const GPUSupportedLimits25 = GPUAdapter4.limits
    const string115 = GPURenderPipeline1.label
    const string116 = GPURenderPipeline0.label
    const boolean6 = GPUAdapter3.isFallbackAdapter
    const string117 = GPUDevice0.label
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer9);
    const GPUSupportedLimits26 = GPUDevice0.limits
    GPUQueue2.submit([GPUCommandBuffer16]);
    const GPUComputePassEncoder19 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder19"
    });
    GPUComputePassEncoder19.setPipeline(GPUComputePipeline4);
    const GPUShaderModule16 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader16
    });
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBindGroupLayout7 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string118 = GPUQuerySet0.type
    const GPUSupportedLimits27 = GPUAdapter9.limits
    GPUComputePassEncoder19.end();
    const GPUCommandBuffer17 = GPUCommandEncoder20.finish();
    const string119 = GPURenderPipeline9.label
    const GPUSupportedLimits28 = GPUDevice0.limits
    const GPUBindGroupLayout8 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUQueue6 = GPUDevice0.queue
    const boolean7 = GPUAdapter3.isFallbackAdapter
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup8);
    const string120 = GPURenderPassEncoder14.label
    const GPUShaderModule17 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader17
    });
    const string121 = GPUComputePipeline2.label
    const string122 = GPUQuerySet4.type
    const string123 = GPUQuerySet9.type
    const string124 = GPUQueue2.label
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline5);
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    GPUQueue3.submit([GPUCommandBuffer15]);
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture28",
        size: {
            width: 145,
            height: 846,
            depthOrArrayLayers: 42
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTexture29 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture29",
        size: {
            width: 55,
            height: 111,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView26 = GPUTexture29.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "r8unorm",
        label: "GPUTextureView26"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9062979705023824,
                g: 0.31478698621960444,
                b: 1.0111990845550292,
                a: 0.9032808315674938
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView26
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 2216864642,
        occlusionQuerySet: GPUQuerySet2
    });
    const string125 = GPUQuerySet6.type
    const string126 = GPUComputePipeline8.label
    const GPUShaderModule18 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader18
    });
    const string127 = GPURenderPipeline11.label
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline11);
    GPURenderPassEncoder14.draw(8);
    GPUQueue2.writeBuffer(GPUBuffer4, 14939164, typedArray24);
    const string128 = GPUCommandEncoder18.label
    const string129 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline6);
    GPURenderPassEncoder15.draw(7);
    const boolean8 = GPUAdapter10.isFallbackAdapter
    const string130 = GPURenderPassEncoder15.label
    const string131 = GPURenderPassEncoder14.label
    GPUQueue4.writeBuffer(GPUBuffer0, 103606576, typedArray25);
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture30",
        size: {
            width: 2244,
            height: 580,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView27 = GPUTexture30.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rgba8unorm",
        label: "GPUTextureView27"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7024846343723794,
                g: 1.9781790854965207,
                b: 0.7583997332772277,
                a: 0.5870621651339727
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView27
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 2272736814,
        occlusionQuerySet: GPUQuerySet11
    });
    const string132 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedLimits29 = GPUDevice0.limits
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    GPURenderPassEncoder15.end();
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
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule16
        }
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline12);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline6);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder16.dispatchWorkgroups(16, 127, 31);
    GPURenderPassEncoder14.draw(2);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray26);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
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
    const GPUShaderModule19 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader19
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline11);
    GPUQueue1.submit([GPUCommandBuffer14]);
    const string133 = GPUQueue2.label
    const string134 = GPUQueue1.label
    const GPUQueue7 = GPUDevice0.queue
    const string135 = GPUQueue7.label
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule6,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "zero"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule4
        }
    });
    const boolean9 = GPUAdapter3.isFallbackAdapter
    const string136 = GPUQuerySet3.label
    const string137 = await navigator.gpu.getPreferredCanvasFormat();
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "dst"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline14",
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
            module: GPUShaderModule14
        }
    });
    const string138 = GPUQueue4.label
    const GPUComputePassEncoder20 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder20"
    });
    const GPUSupportedLimits30 = GPUDevice0.limits
    const GPUTextureView28 = GPUTexture11.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 34,
        baseArrayLayer: 5,
        mipLevelCount: 3,
        baseMipLevel: 3,
        format: "rgba32sint",
        label: "GPUTextureView28"
    });
    const GPUTexture31 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture31",
        size: {
            width: 1434,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const string139 = GPUQuerySet8.count
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline7);
    const string140 = GPUQuerySet4.label
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: true,
        size: 216152032,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const string141 = GPUQuerySet11.label
    const string142 = GPUQueue7.label
    const string143 = GPUComputePassEncoder20.label
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUShaderModule20 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader20
    });
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    GPUComputePassEncoder20.end();
    const GPUCommandBuffer18 = GPUCommandEncoder23.finish();
    const string144 = GPUQuerySet11.count
    GPUQueue5.submit([GPUCommandBuffer10]);
    const string145 = GPUComputePassEncoder18.label
    const GPUAdapterInfo5 = GPUAdapter2.info

}
main().catch(console.error);