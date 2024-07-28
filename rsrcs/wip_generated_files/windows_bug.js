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
// Seed: 561785566742825433
const typedArray45 = new Float32Array([7557, 8928, -6473, -9932, -5326, 8553, 9118, 6239, 8221, 4095, -825, -4821, -9440, 4329, 9650, -6426, 6869, 5657, -1167, 7706, 164, 5689, -5837, 8603, -3054, 2885, -6043, 5544, -4151, -3155, -4559, -6563, -9095, -4320, 3624, -3963, -3072, -3652, 9779, -9698, -6653, 9110, -695, 9136, 9023, -6693, -7946, -3891, -6294, 9897, 1362, -4508, 4467, 6254, -936, 9487, -3660, 4632, -2036, -8895, 9078, 2979, 7041, 659, 2424, 2761, 1072, 6943, -2256, 7362, -3189, 3428, 8210, 743, -8244, -2359, -9061, -1527, -4375, 9812, -7258, 5644, -4453, 3733, -2496, 473, -5853, 4873, -5588, 3665, 6683, 1820, 6493, 7582, -3473, -4306, -9856, 3758, 3534, 7962, -4418, 3452, -4848, -9777, -2356, -9117, 7389, 8074, -1968, 7473, -6201, -4401, -8346, 5776, 8601, -763, 4107, -8206, -3358, -9215, -9243, -5689, -4930, 7142, -9133, -9738, -9532, -8756, 6728, -2575, 9915, 7254, -1247, 7471, 811, -9761, 393, 4791, 9279, 5360, 4265, 4200, 5706, 9994, -876, -7880, -7041, 5468, -8328, 6272, -873, 4436, -5053, -6747, 967, 848, -5789, 7149, 7122, 5473, -1578, -5177, 4032, 3036, 6834, 298, 208, 416, 630, -9753, -5320, 9303, -3776, 8013, 6894, -2784, 8382, 1245, -6928, 7886, 8520, 915, -1566, 9115, -2401, 6832, 9788, 5204, -8285, -6992, 7506, -2315, -4549, -8389, -3214, -7745, -1291, -5127, -3742, 4689, -2179, -5411, 7739, 3681, 8692, 4295, -8379, 8400, -730, -2849, 5000, 5900, -2388, -1776, -3714, 6118, -4969, 7988, 8474, -5302, 2377, -5386, 7221, -6223, -117, -1243, -3618, -296, -2748, 6054, 3739, 6314, -7613, -9664, 903, -4054, 8649, 1491, -5155, 2522, -6051, -4710, 4399, 3265, -5771, -7295, -2519, 3704, 5404, -4367, 3830, 6084, -9025, 2554, 3200, 6340, -9726, -9036, 5888, -7559, -7737, 3035, -7213, -2886, -2381, -5245, -6845, -2456, -6472, 8324, -9115, -9281, 887, -6983, -9418, 4152, -69, 7288, 747, 3314, -6676, 2254, 359, 63, -1875, -7135, -2513, 3580, 7050, 2349, -5110, 1168, 6090, -1931, 4028, -7748, -5647, -4319, -9127, 2273, -7212, 3525, 4351, 9786, 6449, -9569, 7801, -6282, -6973, 5448, 3881, -2286, 6870, -9543, -7762, -3265, 9358, -4961, 1064, -7550, 3490, 9597, 3609, 5525, 1229, -845, 655, -4598, 7263, -3601, 406, 8980, -1379, -291, -7377, -964, 3608, -2341, -5778, -3089, -6978, 4392, 9935, 1285, -7620, 3796, -5200, 9202, -6790, 1936, 2144, -4289, -7189, 7496, -2623, 2608, 4563, -2851, 7022, 2000, 3908, -8566, 1882, -26, 5089, -9084, -6840, -8526, 5468, 4615, -7204, 3157, 9004, -694, 7689, -334, -6242, -4620, 7828, 2088, -9105, -3703, -1763, 5974, 9228, 781, 8475, 9182, -4101, 2428, -5564, -5699, 3762, 4193, -6201, -6451])
const shader17 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader16 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray44 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray43 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray42 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray41 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray40 = new Uint8Array([-505, -7363, 9601, -5960, -3775, -5460, -2119, 4027, -9177, 1952, 2764, 6068])
const typedArray39 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader15 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader14 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray38 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray37 = new Int8Array([-6385, 9005, -9176, -5912, -5811, 7763, 2677, -9857])
const typedArray36 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray35 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray34 = new Int8Array([9605, -7016, 3136, -4210, -2904, -4266, -6292, -3029, -2708, -2668, 469, 6800, -6504, 8744, 8981, -9612, 736, 8367, 3158, 8181, -6978, -4878, -1724, 5845, -616, 2305, 8273, 9993, -4341, -9268, 8216, 4734, 8854, 795, 8419, 8608, 7288, -6041, 7767, -3290, 4374, -7490, -662, 5736, 6575, -8514, -996, -2432, -332, 9564, -154, 7168, 2411, -6776, 2301, -8173, 5307, 2981, -8278, -6860, 2693, 9408, -1600, -2348, 8786, -6782, -9434, 1986, -9998, -1775, 8729, 5371, -9873, 6905, -2923, 9755, 1, 9304, 8534, -9755, -3722, -5917, 1947, -5004, -2597, 4817, 8975, 680, -9882, -8029, -4614, -169, -5470, -8431, -8208, 2224, 884, -8549, 4715, 4399, 2585, -799, 8555, 6109, 2389, 7066, 5789, -5807, -3013, -5343, 1515, 4178, 3011, -1579, -6709, 1515, 7492, -1407, -2607, 6905, -3769, 5410, 9195, 2356, 7204, -4274, 8857, -6619, -7909, 5632, -106, 998, 7326, -91, 3820, 2537, -5590, 4075, 1550, -3456, 978, -5281, -8926, 5595, 2576, 7087, 9324, -9969, 5728, 3071, 5744, -3090, -7079, -4977, 3472, 572, 353, 8858, 7252, 8200, -1931, 3190, -149, -4063, 2421, -3214, -2241, -6550, -7159, 4581, 3022, -2583, -6848, -3015, -5161, 3795, 3936, -2632, -7736, -1012, -6262, 115, 9147, -3327, 2467, 8356, -4767, 4044, 3752, -1817, 7687, -7204, -3500, 2530, 2037, -148, 279, -2756, -6865, 1289, -8501, 1541, 7483, 4270, -6286, 2483, 5451, 3467, -6431, -1364, -4499, 3100, 7917, 4129, -6691, -6041, -1517, 6252, 3418, -8734, -6455, 9935, 3673, 2341, -9084, 4390, 7100, 8316, 2702, -7000, -1051, -8232, -9744, 1188, -9920, 13, -9985, -9945, -6777, 3942, -3322, 9652, -9089, -5820, -9718, -4010, -3678, -3290, 5065, -296, 1654, -5902, -7580, -916, 527, -8882, -6364, -7258, 9340, -5717, 8069, 1058, 525, -2522, -4919, -5187, 2842, -500, -2690, 4498, -662, 2814, 4829, -8176, -4816, 2826, 1928, -8984, 5350, 3188, 687, -7197, -5628, 7650, 893, -3689, -9165, -3833, 1541, -9441, 2780, -2437, 5632, -6045, -9114, 9868, 387, 8172, -8214, 5770, -9024, -498, -3927, -473, 969, -2317, 467, 2121, 8569, 4461, -6441, -8909, 8953, -7513, -6758, -9503, 3672, -8029, -836, 5859, 3538, -3706, -5749, 4554, 405, 451, -544, 1712, 8824, 4078, 1701, 1626, -4422, 9574, 1290, 530, 4852, -5644, -9478, 9869, 7281, -5228, -3879, 9589, -5893, -4444, 9525, 2911, -1688, 1023, -1889, -8183, 854, 1739, -6518, -4762, 6580, -801, -3074, 5397, 3612, 9128, -1442, 6073, -8576, -8371, -8887, -720, 7917, 4601, -648, 283, 3029, -8185, -3785, 6594, -2649, -8677, 1615, -872, -1981, -4806, 2454, -3988, 2728, -7088, -24, 5100, 2681, -2252, -7651, -8549, -753, 6179, 2380, 2380, 5411, 6740, 823, 617])
const typedArray33 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray32 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray31 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray30 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray29 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray28 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader13 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader12 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray27 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray26 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader11 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray25 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray24 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray23 = new Float32Array([-40, -5372, -4832, -7812])
const typedArray22 = new Float32Array([3349])
const typedArray21 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray20 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray19 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray18 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray17 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray16 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray15 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray14 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader10 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray13 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray12 = new Uint8Array([7396, -9980, -1799, -5039])
const typedArray11 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader9 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader8 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray10 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader7 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray9 = new Float32Array([-6459])
const shader6 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray8 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray7 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader5 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader4 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray6 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray5 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray4 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader3 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray3 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray2 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray1 = new Float32Array([3848])
const typedArray0 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader2 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader0 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture0",
        size: {
            width: 234,
            height: 902,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8sint"]
    });
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 3479,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const string0 = GPUQuerySet0.label
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
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rgba8sint",
        label: "GPUTextureView0"
    });
    const GPUSupportedFeatures0 = GPUDevice0.features
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
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
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const string1 = GPUComputePassEncoder0.label
    const GPUQueue0 = GPUDevice0.queue
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "src"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline0",
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
    const GPUComputePassEncoder1 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray0);
    const GPUBindGroup0 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup0);
    const string2 = GPUBuffer1.label
    const GPUTextureView1 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rgba8sint",
        label: "GPUTextureView1"
    });
    const GPUAdapterInfo1 = GPUAdapter0.info
    const string3 = GPUDevice0.label
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray1);
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture1",
        size: {
            width: 644,
            height: 200,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView2 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "r16float",
        label: "GPUTextureView2"
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 2035,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.24778898661749715,
                g: 0.24463199757390242,
                b: 0.11794458971900168,
                a: 0.10103029698984722
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView2,
            depthSlice: 4
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 870659342,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder0.end();
    const string4 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedLimits1 = GPUDevice0.limits
    GPUComputePassEncoder1.end();
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 190540700,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer2.mapAsync(GPUMapMode.READ);
    const string5 = GPUQuerySet0.label
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 84654408,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer3.mapAsync(GPUMapMode.READ);
    const ArrayBuffer0 = GPUBuffer3.getMappedRange();
    const string6 = GPURenderPipeline0.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string7 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture2",
        size: {
            width: 2605,
            height: 1166,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgba16float",
        label: "GPUTextureView3"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 1071,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.523677585816714,
                g: 0.37356781118095006,
                b: 0.6044493840164553,
                a: 0.568962871268125
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView3
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 126569428,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline1",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder1.draw(10);
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 243780176,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
    });
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer4);
    const string8 = GPUBuffer1.label
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
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
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba8unorm",
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
            frontFace: "cw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUComputePassEncoder2 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.end();
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture3",
        size: {
            width: 2292,
            height: 51,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const boolean0 = GPUAdapter1.isFallbackAdapter
    const string9 = GPUBuffer0.label
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 48512220,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer5.mapAsync(GPUMapMode.READ);
    const string10 = GPUQuerySet0.label
    const string11 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture4",
        size: {
            width: 262,
            height: 505,
            depthOrArrayLayers: 35
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView4 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView4"
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 1860,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9269752042948759,
                g: 0.47170617986917573,
                b: 0.08048296227770513,
                a: 0.5704015407504772
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView4,
            depthSlice: 27
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 4031931156,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 1800,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string12 = GPUQueue0.label
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline0);
    const string13 = GPUComputePassEncoder3.label
    const GPUSupportedFeatures4 = GPUDevice0.features
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUCommandBuffer2 = GPUCommandEncoder4.finish();
    GPUQueue0.submit([GPUCommandBuffer2]);
    const string14 = GPUDevice0.label
    const string15 = GPUTextureView2.label
    const string16 = GPUDevice0.label
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray2);
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup1);
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string17 = GPURenderPassEncoder2.label
    const string18 = GPUDevice0.label
    GPURenderPassEncoder2.end();
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUQueue3 = GPUDevice0.queue
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray3);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup2);
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 2410,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
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
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
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
    const GPUQueue4 = GPUDevice0.queue
    const GPUBindGroupLayout0 = GPUComputePipeline3.getBindGroupLayout(0);
    const string19 = GPUQueue4.label
    const GPUSupportedFeatures5 = GPUDevice0.features
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 104254872,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer6.mapAsync(GPUMapMode.READ);
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder4 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUDevice1 = await GPUAdapter3.requestDevice();
    const GPUShaderModule3 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader3
    });
    const GPUComputePipeline6 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUBuffer7 = GPUDevice1.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer8 = GPUDevice1.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX
    });
    const GPUQueue5 = GPUDevice1.queue
    GPUQueue5.writeBuffer(GPUBuffer7, 0, typedArray4);
    const GPUBindGroup3 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline6.bindGroup",
        layout: GPUComputePipeline6.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer7
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer8
            }
        }]
    });
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUQueue6 = GPUDevice0.queue
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray5);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline7);
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUQueue7 = GPUDevice0.queue
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray6);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline7.bindGroup",
        layout: GPUComputePipeline7.getBindGroupLayout(0),
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder3.dispatchWorkgroups(245, 136, 57);
    const string20 = GPURenderPipeline3.label
    const GPUCommandEncoder5 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUCommandBuffer3 = GPUCommandEncoder5.finish();
    GPUQueue5.submit([GPUCommandBuffer3]);
    const GPUComputePipeline10 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUCommandEncoder6 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUTexture5 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture5",
        size: {
            width: 544,
            height: 269,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView5 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView5"
    });
    const GPUQuerySet6 = GPUDevice1.createQuerySet({
        count: 3221,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.17664026571868385,
                g: 0.3208691947859448,
                b: 0.11902936848998336,
                a: 0.8156977806392082
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView5,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 989288345,
        occlusionQuerySet: GPUQuerySet6
    });
    const GPUShaderModule4 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader4
    });
    const GPUShaderModule5 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader5
    });
    const GPURenderPipeline4 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline4",
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline4);
    const GPUTextureView6 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 1,
        format: "rgba8sint",
        label: "GPUTextureView6"
    });
    const GPUComputePipeline11 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const string21 = GPURenderPassEncoder3.label
    const GPUTextureView7 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8sint",
        label: "GPUTextureView7"
    });
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture6",
        size: {
            width: 3054,
            height: 3104,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView8 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView8"
    });
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 1976,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6682427690328585,
                g: 0.7269740335495181,
                b: 0.3727866761134906,
                a: 0.22998200824847326
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 144975547,
        occlusionQuerySet: GPUQuerySet7
    });
    const boolean1 = GPUAdapter1.isFallbackAdapter
    const string22 = GPUQueue6.label
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 98445364,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer9.mapAsync(GPUMapMode.READ);
    const ArrayBuffer1 = GPUBuffer9.getMappedRange();
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 1155,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUComputePipeline12 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPUDevice2 = await GPUAdapter1.requestDevice();
    const string23 = GPUBuffer5.label
    GPUBuffer0.unmap();
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    GPUQueue0.submit([GPUCommandBuffer4]);
    const string24 = GPUTextureView7.label
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder9 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUBuffer10 = GPUDevice2.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 97013876,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    const GPUBuffer11 = GPUDevice2.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 67206316,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    });
    GPUCommandEncoder9.copyBufferToBuffer(GPUBuffer10, 94772976, GPUBuffer11, 46603984, 2237312);
    const GPUBuffer12 = GPUDevice1.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 238971220,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer12.mapAsync(GPUMapMode.READ);
    const GPUBuffer13 = GPUDevice1.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 245755664,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer13.mapAsync(GPUMapMode.READ);
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline13);
    const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    const GPUQueue8 = GPUDevice0.queue
    GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder4.dispatchWorkgroups(89, 141, 21);
    const string25 = GPUDevice2.label
    const GPUDevice3 = await GPUAdapter2.requestDevice();
    const string26 = GPUDevice2.label
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUCommandBuffer5 = GPUCommandEncoder10.finish();
    GPUQueue7.submit([GPUCommandBuffer5]);
    GPURenderPassEncoder3.end();
    const string27 = GPUComputePassEncoder4.label
    const GPUSupportedLimits2 = GPUAdapter3.limits
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    GPUBuffer13.unmap();
    GPUBuffer4.unmap();
    const string28 = GPUBuffer10.label
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline5",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    const string29 = GPUComputePassEncoder4.label
    const GPUSupportedLimits3 = GPUDevice3.limits
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    const GPUBindGroupLayout1 = GPUComputePipeline13.getBindGroupLayout(0);
    const string30 = GPUComputePipeline10.label
    GPUBuffer12.unmap();
    const string31 = GPUBuffer9.label
    const GPUTexture7 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture7",
        size: {
            width: 87,
            height: 454,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView9 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView9"
    });
    const GPUQuerySet9 = GPUDevice2.createQuerySet({
        count: 1806,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4514957844420129,
                g: 0.4377485261168629,
                b: 0.9308807252473242,
                a: 0.9480081673959279
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView9,
            depthSlice: 27
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 4214873050,
        occlusionQuerySet: GPUQuerySet9
    });
    const GPUCommandEncoder11 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const string32 = GPUBuffer10.label
    const string33 = GPUTextureView0.label
    const GPUComputePipeline16 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline16);
    const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    const GPUQueue9 = GPUDevice0.queue
    GPUQueue9.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline16.bindGroup",
        layout: GPUComputePipeline16.getBindGroupLayout(0),
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder3.dispatchWorkgroups(62, 26, 53);
    const string34 = await navigator.gpu.getPreferredCanvasFormat();
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer8, 20, GPUBuffer12, 156975184, 8);
    const GPUShaderModule6 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader6
    });
    const GPUCommandEncoder12 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const string35 = GPUCommandEncoder9.label
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer8, 32, GPUBuffer12, 181615068, 0);
    GPUQueue3.writeBuffer(GPUBuffer0, 4, typedArray9);
    GPUComputePassEncoder4.end();
    const GPUBuffer14 = GPUDevice0.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE
    });
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer14, 0, 64);
    const GPUCommandBuffer6 = GPUCommandEncoder2.finish();
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const string36 = GPUDevice0.label
    const GPUAdapterInfo2 = GPUAdapter1.info
    const GPUShaderModule7 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader7
    });
    const GPUComputePipeline18 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline18",
        layout: "auto"
    });
    const GPUBuffer15 = GPUDevice2.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GPUBuffer16 = GPUDevice2.createBuffer({
        label: "GPUBuffer16",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const GPUQueue10 = GPUDevice2.queue
    GPUQueue10.writeBuffer(GPUBuffer15, 0, typedArray10);
    const GPUBindGroup8 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline18.bindGroup",
        layout: GPUComputePipeline18.getBindGroupLayout(0),
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
    const GPUSupportedFeatures6 = GPUAdapter3.features
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUCommandBuffer7 = GPUCommandEncoder13.finish();
    GPUQueue3.submit([GPUCommandBuffer7]);
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup7);
    const string37 = GPURenderPassEncoder4.label
    const string38 = GPUCommandEncoder7.label
    const GPUSupportedFeatures7 = GPUAdapter0.features
    GPUComputePassEncoder3.end();
    const GPUBuffer17 = GPUDevice0.createBuffer({
        label: "GPUBuffer17",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX
    });
    GPUCommandEncoder3.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer17, 0, 64);
    const GPUCommandBuffer8 = GPUCommandEncoder3.finish();
    const GPUQueue11 = GPUDevice3.queue
    const string39 = await navigator.gpu.getPreferredCanvasFormat();
    const string40 = GPUQuerySet7.label
    const GPUComputePassEncoder5 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const string41 = GPUComputePassEncoder5.label
    const GPUSupportedFeatures8 = GPUDevice2.features
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUCommandBuffer9 = GPUCommandEncoder14.finish();
    GPUQueue9.submit([GPUCommandBuffer9]);
    const boolean2 = GPUAdapter2.isFallbackAdapter
    const string42 = GPUTextureView7.label
    const GPUTexture8 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture8",
        size: {
            width: 900,
            height: 1007,
            depthOrArrayLayers: 33
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView10 = GPUTexture8.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgba16float",
        label: "GPUTextureView10"
    });
    const GPUQuerySet10 = GPUDevice1.createQuerySet({
        count: 2815,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4115760437536864,
                g: 0.2536681472039125,
                b: 0.5424063289281674,
                a: 0.20394259016436278
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView10,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 1146819343,
        occlusionQuerySet: GPUQuerySet10
    });
    const GPUBuffer18 = GPUDevice3.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: false,
        size: 187310340,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer18.mapAsync(GPUMapMode.READ);
    const GPUTextureView11 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 3,
        format: "r16float",
        label: "GPUTextureView11"
    });
    const GPUComputePassEncoder6 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUSupportedFeatures9 = GPUDevice1.features
    const GPUShaderModule8 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader8
    });
    const GPUShaderModule9 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader9
    });
    const GPURenderPipeline6 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
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
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline6);
    const GPUSupportedFeatures10 = GPUDevice0.features
    const string43 = GPURenderPipeline2.label
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedLimits4 = GPUDevice1.limits
    const GPUCommandEncoder15 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder15.finish();
    GPUQueue11.submit([GPUCommandBuffer10]);
    GPURenderPassEncoder4.draw(4);
    const GPUQueue12 = GPUDevice3.queue
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string44 = GPUQueue5.label
    const GPUQuerySet11 = GPUDevice1.createQuerySet({
        count: 1839,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPUComputePipeline19 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline19",
        layout: "auto"
    });
    const GPUQueue13 = GPUDevice2.queue
    GPUQueue13.writeBuffer(GPUBuffer15, 0, typedArray11);
    const GPUBindGroup9 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline19.bindGroup",
        layout: GPUComputePipeline19.getBindGroupLayout(0),
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
    const GPUQueue14 = GPUDevice2.queue
    const GPURenderPipeline7 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
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
                format: "r8unorm",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule5
        }
    });
    const GPUSupportedFeatures11 = GPUDevice3.features
    const string45 = GPURenderPassEncoder6.label
    GPUBuffer13.unmap();
    GPUQueue13.writeBuffer(GPUBuffer15, 44, typedArray12);
    const GPUBuffer19 = GPUDevice2.createBuffer({
        label: "GPUBuffer19",
        mappedAtCreation: false,
        size: 157199692,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE
    });
    const GPUBuffer20 = GPUDevice3.createBuffer({
        label: "GPUBuffer20",
        mappedAtCreation: false,
        size: 113587928,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer20.mapAsync(GPUMapMode.READ);
    const string46 = GPURenderPipeline7.label
    const GPUSupportedLimits5 = GPUDevice2.limits
    const GPUTexture9 = GPUDevice3.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16sint",
        label: "GPUTexture9",
        size: {
            width: 105,
            height: 797,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16sint"]
    });
    const GPUTextureView12 = GPUTexture9.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16sint",
        label: "GPUTextureView12"
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUCommandBuffer11 = GPUCommandEncoder16.finish();
    GPUQueue7.submit([GPUCommandBuffer11]);
    const string47 = GPUBuffer8.label
    const GPUQueue15 = GPUDevice0.queue
    const GPUBuffer21 = GPUDevice0.createBuffer({
        label: "GPUBuffer21",
        mappedAtCreation: false,
        size: 262446944,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer21.mapAsync(GPUMapMode.READ);
    const GPUSupportedLimits6 = GPUDevice1.limits
    const GPUSupportedFeatures12 = GPUDevice2.features
    const GPUComputePipeline20 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline20",
        layout: "auto"
    });
    const GPUQueue16 = GPUDevice0.queue
    GPUQueue16.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline20.bindGroup",
        layout: GPUComputePipeline20.getBindGroupLayout(0),
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
    const GPUSupportedLimits7 = GPUDevice3.limits
    const string48 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule10 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader10
    });
    const GPUComputePipeline21 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline21",
        layout: "auto"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline21);
    const string49 = GPUBuffer17.label
    const string50 = GPUComputePipeline3.label
    const string51 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder17 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUTexture10 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture10",
        size: {
            width: 776,
            height: 702,
            depthOrArrayLayers: 17
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView13 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rg16float",
        label: "GPUTextureView13"
    });
    const GPUQuerySet12 = GPUDevice1.createQuerySet({
        count: 3323,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.40041221785407255,
                g: 0.20135344023972346,
                b: 0.26552286859255936,
                a: 0.23962262269909707
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView13,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 3711063327,
        occlusionQuerySet: GPUQuerySet12
    });
    const GPUBuffer22 = GPUDevice3.createBuffer({
        label: "GPUBuffer22",
        mappedAtCreation: true,
        size: 172293856,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer2 = GPUBuffer22.getMappedRange();
    const string52 = GPUComputePipeline21.label
    const string53 = GPUComputePipeline4.label
    const string54 = GPUCommandEncoder6.label
    const GPUTexture11 = GPUDevice3.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "depth24plus",
        label: "GPUTexture11",
        size: {
            width: 1625,
            height: 3471,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["depth24plus"]
    });
    const GPUComputePipeline22 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline22",
        layout: "auto"
    });
    const GPUQueue17 = GPUDevice2.queue
    GPUQueue17.writeBuffer(GPUBuffer15, 0, typedArray14);
    const GPUBindGroup11 = GPUDevice2.createBindGroup({
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup11);
    GPURenderPassEncoder7.end();
    const GPUCommandEncoder18 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUComputePipeline23 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline23",
        layout: "auto"
    });
    const GPUComputePipeline24 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline24",
        layout: "auto"
    });
    const GPUQueue18 = GPUDevice2.queue
    GPUQueue18.writeBuffer(GPUBuffer15, 0, typedArray15);
    const GPUBindGroup12 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline24.bindGroup",
        layout: GPUComputePipeline24.getBindGroupLayout(0),
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
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline23);
    GPUBuffer12.unmap();
    const string55 = GPUCommandEncoder9.label
    const string56 = GPUTextureView13.label
    const GPUTextureView14 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba8unorm",
        label: "GPUTextureView14"
    });
    const string57 = GPUQueue12.label
    const GPUComputePipeline25 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline25",
        layout: "auto"
    });
    const GPUComputePipeline26 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline26",
        layout: "auto"
    });
    const GPUQueue19 = GPUDevice2.queue
    GPUQueue19.writeBuffer(GPUBuffer15, 0, typedArray16);
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
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline25);
    const boolean3 = GPUAdapter1.isFallbackAdapter
    const GPUComputePipeline27 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline27",
        layout: "auto"
    });
    const GPUBuffer23 = GPUDevice3.createBuffer({
        label: "GPUBuffer23",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer24 = GPUDevice3.createBuffer({
        label: "GPUBuffer24",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const GPUQueue20 = GPUDevice3.queue
    GPUQueue20.writeBuffer(GPUBuffer23, 0, typedArray17);
    const GPUBindGroup14 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline21.bindGroup",
        layout: GPUComputePipeline21.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup14);
    const string58 = GPUComputePassEncoder5.label
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUCommandEncoder17.copyBufferToBuffer(GPUBuffer8, 28, GPUBuffer7, 12, 4);
    const GPUComputePipeline28 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline28",
        layout: "auto"
    });
    const GPUQueue21 = GPUDevice3.queue
    GPUQueue21.writeBuffer(GPUBuffer23, 0, typedArray18);
    const GPUBindGroup15 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline28.bindGroup",
        layout: GPUComputePipeline28.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    const GPUBuffer25 = GPUDevice2.createBuffer({
        label: "GPUBuffer25",
        mappedAtCreation: false,
        size: 231484356,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer25.mapAsync(GPUMapMode.READ);
    const GPUComputePipeline29 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline29",
        layout: "auto"
    });
    const GPUComputePipeline30 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline30",
        layout: "auto"
    });
    const GPUQueue22 = GPUDevice2.queue
    GPUQueue22.writeBuffer(GPUBuffer15, 0, typedArray19);
    const GPUBindGroup16 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline25.bindGroup",
        layout: GPUComputePipeline25.getBindGroupLayout(0),
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup16);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline29);
    const GPUComputePipeline31 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline31",
        layout: "auto"
    });
    const GPUQueue23 = GPUDevice2.queue
    GPUQueue23.writeBuffer(GPUBuffer15, 0, typedArray20);
    const GPUBindGroup17 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline29.bindGroup",
        layout: GPUComputePipeline29.getBindGroupLayout(0),
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup17);
    GPUComputePassEncoder6.dispatchWorkgroups(183, 81, 53);
    GPUComputePassEncoder6.end();
    const GPUBuffer26 = GPUDevice2.createBuffer({
        label: "GPUBuffer26",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer16, 0, GPUBuffer26, 0, 32);
    const GPUCommandBuffer12 = GPUCommandEncoder12.finish();
    const string59 = GPURenderPipeline7.label
    const string60 = GPURenderPipeline4.label
    const string61 = GPUTextureView4.label
    const GPUTexture12 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r32float",
        label: "GPUTexture12",
        size: {
            width: 332,
            height: 3811,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32float"]
    });
    GPUBuffer6.unmap();
    const string62 = await navigator.gpu.getPreferredCanvasFormat();
    GPUCommandEncoder18.copyBufferToBuffer(GPUBuffer23, 12, GPUBuffer20, 47416452, 12);
    const string63 = GPUQuerySet3.label
    const GPUBuffer27 = GPUDevice1.createBuffer({
        label: "GPUBuffer27",
        mappedAtCreation: true,
        size: 234746120,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer3 = GPUBuffer27.getMappedRange();
    const GPURenderPipeline8 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "constant"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule9
        }
    });
    const GPUBuffer28 = GPUDevice1.createBuffer({
        label: "GPUBuffer28",
        mappedAtCreation: true,
        size: 262525176,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    });
    const string64 = GPUQueue4.label
    const GPUDevice4 = await GPUAdapter5.requestDevice();
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup14);
    const string65 = GPURenderPipeline7.label
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline6);
    GPUComputePassEncoder5.end();
    const GPUBuffer29 = GPUDevice2.createBuffer({
        label: "GPUBuffer29",
        mappedAtCreation: false,
        size: 239613940,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer29.mapAsync(GPUMapMode.READ);
    const ArrayBuffer4 = GPUBuffer29.getMappedRange();
    const string66 = GPURenderPassEncoder4.label
    const string67 = GPUBuffer0.label
    const string68 = GPUQueue14.label
    const GPUComputePipeline32 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline32",
        layout: "auto"
    });
    const GPUQueue24 = GPUDevice1.queue
    GPUQueue24.writeBuffer(GPUBuffer7, 0, typedArray21);
    const GPUBindGroup18 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline32.bindGroup",
        layout: GPUComputePipeline32.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer7
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer8
            }
        }]
    });
    const GPUBuffer30 = GPUDevice3.createBuffer({
        label: "GPUBuffer30",
        mappedAtCreation: false,
        size: 188066516,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer30.mapAsync(GPUMapMode.READ);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBuffer31 = GPUDevice0.createBuffer({
        label: "GPUBuffer31",
        mappedAtCreation: true,
        size: 90093468,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer5 = GPUBuffer31.getMappedRange();
    GPUQueue23.writeBuffer(GPUBuffer15, 44, typedArray22);
    const GPUComputePassEncoder7 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUComputePipeline33 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline33",
        layout: "auto"
    });
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline33);
    const GPUSupportedLimits8 = GPUDevice0.limits
    const string69 = GPUTextureView2.label
    const boolean4 = GPUAdapter7.isFallbackAdapter
    const GPUSupportedLimits9 = GPUAdapter7.limits
    const string70 = GPUCommandEncoder17.label
    const string71 = GPUQuerySet7.label
    GPUQueue14.writeBuffer(GPUBuffer15, 16, typedArray23);
    const GPUBuffer32 = GPUDevice2.createBuffer({
        label: "GPUBuffer32",
        mappedAtCreation: false,
        size: 9073780,
        usage: GPUBufferUsage.MAP_READ
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline6);
    const GPUTexture13 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8sint",
        label: "GPUTexture13",
        size: {
            width: 489,
            height: 922,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8sint"]
    });
    GPUComputePassEncoder7.end();
    const string72 = GPUQueue5.label
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapterInfo3 = GPUAdapter0.info
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUComputePipeline34 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline34",
        layout: "auto"
    });
    const GPUQueue25 = GPUDevice3.queue
    GPUQueue25.writeBuffer(GPUBuffer23, 0, typedArray24);
    const GPUBindGroup19 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline34.bindGroup",
        layout: GPUComputePipeline34.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup19);
    GPUCommandEncoder18.copyBufferToBuffer(GPUBuffer24, 8, GPUBuffer23, 0, 12);
    GPURenderPassEncoder5.draw(3);
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline35 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline35",
        layout: "auto"
    });
    const GPUQueue26 = GPUDevice3.queue
    GPUQueue26.writeBuffer(GPUBuffer23, 0, typedArray25);
    const GPUBindGroup20 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline35.bindGroup",
        layout: GPUComputePipeline35.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup20);
    const GPUComputePipeline36 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline36",
        layout: "auto"
    });
    const GPUBuffer33 = GPUDevice2.createBuffer({
        label: "GPUBuffer33",
        mappedAtCreation: false,
        size: 129229048,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer33.mapAsync(GPUMapMode.READ);
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    const GPUComputePassEncoder9 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const string73 = GPUComputePipeline16.label
    const GPUQuerySet13 = GPUDevice1.createQuerySet({
        count: 3078,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    GPUComputePassEncoder9.end();
    GPUBuffer3.unmap();
    const string74 = GPUBuffer11.label
    GPUCommandEncoder18.copyBufferToBuffer(GPUBuffer24, 32, GPUBuffer23, 32, 0);
    GPUComputePassEncoder8.end();
    const GPURenderPipeline9 = GPUDevice1.createRenderPipeline({
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.RED
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer26);
    const GPUShaderModule11 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader11
    });
    GPURenderPassEncoder6.end();
    const GPUCommandBuffer13 = GPUCommandEncoder6.finish();
    const string75 = GPURenderPassEncoder5.label
    const GPUComputePipeline37 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline37",
        layout: "auto"
    });
    const GPUQueue27 = GPUDevice0.queue
    GPUQueue27.writeBuffer(GPUBuffer0, 0, typedArray26);
    const GPUBindGroup21 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline37.bindGroup",
        layout: GPUComputePipeline37.getBindGroupLayout(0),
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
    const GPUComputePassEncoder10 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const GPUBuffer34 = GPUDevice2.createBuffer({
        label: "GPUBuffer34",
        mappedAtCreation: true,
        size: 231527644,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer6 = GPUBuffer34.getMappedRange();
    GPURenderPassEncoder5.draw(4);
    const string76 = GPUBuffer23.label
    const GPUComputePipeline38 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline38",
        layout: "auto"
    });
    const GPUQueue28 = GPUDevice3.queue
    GPUQueue28.writeBuffer(GPUBuffer23, 0, typedArray27);
    const GPUBindGroup22 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline38.bindGroup",
        layout: GPUComputePipeline38.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup22);
    const string77 = GPUQueue0.label
    const GPUTexture14 = GPUDevice3.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture14",
        size: {
            width: 938,
            height: 753,
            depthOrArrayLayers: 17
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32uint"]
    });
    GPUCommandEncoder11.copyBufferToBuffer(GPUBuffer24, 0, GPUBuffer23, 12, 0);
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer35 = GPUDevice4.createBuffer({
        label: "GPUBuffer35",
        mappedAtCreation: false,
        size: 226202248,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer35.mapAsync(GPUMapMode.READ);
    const GPUShaderModule12 = GPUDevice4.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const GPUShaderModule13 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader13
    });
    const GPURenderPipeline10 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline10",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule13
        }
    });
    GPUCommandEncoder17.copyBufferToBuffer(GPUBuffer8, 20, GPUBuffer7, 20, 12);
    const GPUComputePipeline39 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline39",
        layout: "auto"
    });
    const GPUQueue29 = GPUDevice2.queue
    GPUQueue29.writeBuffer(GPUBuffer15, 0, typedArray28);
    const GPUBindGroup23 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline39.bindGroup",
        layout: GPUComputePipeline39.getBindGroupLayout(0),
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
    const GPUSupportedLimits10 = GPUAdapter5.limits
    const GPUBuffer36 = GPUDevice3.createBuffer({
        label: "GPUBuffer36",
        mappedAtCreation: false,
        size: 162723220,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer36.mapAsync(GPUMapMode.READ);
    const GPUComputePipeline40 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline40",
        layout: "auto"
    });
    const GPUQueue30 = GPUDevice3.queue
    GPUQueue30.writeBuffer(GPUBuffer23, 0, typedArray29);
    const GPUBindGroup24 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline40.bindGroup",
        layout: GPUComputePipeline40.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup24);
    const GPUBuffer37 = GPUDevice2.createBuffer({
        label: "GPUBuffer37",
        mappedAtCreation: false,
        size: 30061592,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer37.mapAsync(GPUMapMode.READ);
    GPUBuffer26.unmap();
    const string78 = GPUComputePipeline4.label
    const GPUComputePipeline41 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline41",
        layout: "auto"
    });
    const GPUBuffer38 = GPUDevice4.createBuffer({
        label: "GPUBuffer38",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer39 = GPUDevice4.createBuffer({
        label: "GPUBuffer39",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST
    });
    const GPUQueue31 = GPUDevice4.queue
    GPUQueue31.writeBuffer(GPUBuffer38, 0, typedArray30);
    const GPUBindGroup25 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline41.bindGroup",
        layout: GPUComputePipeline41.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer38
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer39
            }
        }]
    });
    const GPUBindGroupLayout2 = GPUComputePipeline28.getBindGroupLayout(0);
    const GPUComputePipeline42 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline42",
        layout: "auto"
    });
    const GPUComputePipeline43 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline43",
        layout: "auto"
    });
    const GPUQueue32 = GPUDevice3.queue
    GPUQueue32.writeBuffer(GPUBuffer23, 0, typedArray31);
    const GPUBindGroup26 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline43.bindGroup",
        layout: GPUComputePipeline43.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup26);
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline42);
    const GPUComputePipeline44 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline44",
        layout: "auto"
    });
    const GPUQueue33 = GPUDevice3.queue
    GPUQueue33.writeBuffer(GPUBuffer23, 0, typedArray32);
    const GPUBindGroup27 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline42.bindGroup",
        layout: GPUComputePipeline42.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup27);
    GPUComputePassEncoder10.dispatchWorkgroups(91, 50, 15);
    const GPUBuffer40 = GPUDevice1.createBuffer({
        label: "GPUBuffer40",
        mappedAtCreation: true,
        size: 140125528,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer41 = GPUDevice4.createBuffer({
        label: "GPUBuffer41",
        mappedAtCreation: false,
        size: 255033040,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer41.mapAsync(GPUMapMode.READ);
    const ArrayBuffer7 = GPUBuffer41.getMappedRange();
    const string79 = GPUComputePassEncoder10.label
    const GPUSupportedLimits11 = GPUDevice1.limits
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline5);
    const string80 = GPUComputePassEncoder10.label
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer14 = GPUCommandEncoder7.finish();
    GPURenderPassEncoder5.end();
    const GPUTextureView15 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 16,
        baseArrayLayer: 7,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView15"
    });
    const GPUTexture15 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture15",
        size: {
            width: 2969,
            height: 3314,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView16 = GPUTexture15.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView16"
    });
    const GPUQuerySet14 = GPUDevice1.createQuerySet({
        count: 3239,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7562080717027537,
                g: 0.2889780289596794,
                b: 0.06556381534751743,
                a: 0.33273646114253963
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView16
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 3483638168,
        occlusionQuerySet: GPUQuerySet14
    });
    GPURenderPassEncoder8.end();
    const GPUBuffer42 = GPUDevice3.createBuffer({
        label: "GPUBuffer42",
        mappedAtCreation: false,
        size: 3490016,
        usage: GPUBufferUsage.UNIFORM
    });
    const GPUSupportedLimits12 = GPUAdapter5.limits
    GPUComputePassEncoder10.end();
    const GPUBuffer43 = GPUDevice3.createBuffer({
        label: "GPUBuffer43",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    GPUCommandEncoder18.copyBufferToBuffer(GPUBuffer24, 0, GPUBuffer43, 0, 32);
    const string81 = GPUQueue0.label
    const GPUCommandBuffer15 = GPUCommandEncoder11.finish();
    const boolean5 = GPUAdapter5.isFallbackAdapter
    const string82 = GPUBuffer30.label
    const GPUSupportedLimits13 = GPUDevice2.limits
    const GPUBuffer44 = GPUDevice2.createBuffer({
        label: "GPUBuffer44",
        mappedAtCreation: false,
        size: 212313236,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer44.mapAsync(GPUMapMode.READ);
    const ArrayBuffer8 = GPUBuffer44.getMappedRange();
    const GPUSupportedFeatures13 = GPUDevice1.features
    const string83 = GPUBuffer13.label
    const GPUCommandEncoder19 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUCommandBuffer16 = GPUCommandEncoder19.finish();
    GPUQueue28.submit([GPUCommandBuffer16]);
    const GPUTexture16 = GPUDevice2.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture16",
        size: {
            width: 1382,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8snorm"]
    });
    const GPUComputePipeline45 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline45",
        layout: "auto"
    });
    const GPUTexture17 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture17",
        size: {
            width: 720,
            height: 628,
            depthOrArrayLayers: 12
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView17 = GPUTexture17.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView17"
    });
    const GPUQuerySet15 = GPUDevice2.createQuerySet({
        count: 3119,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8219761850066425,
                g: 0.745451674820556,
                b: 0.5389930410732076,
                a: 0.23891755175482376
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView17,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 2771251228,
        occlusionQuerySet: GPUQuerySet15
    });
    const GPURenderPipeline11 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
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
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule9
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline11);
    const GPUComputePipeline46 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline46",
        layout: "auto"
    });
    const GPUQueue34 = GPUDevice3.queue
    const GPUCommandBuffer17 = GPUCommandEncoder18.finish();
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer11);
    const boolean6 = GPUAdapter6.isFallbackAdapter
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer10);
    const GPUSupportedLimits14 = GPUAdapter1.limits
    const GPUBuffer45 = GPUDevice0.createBuffer({
        label: "GPUBuffer45",
        mappedAtCreation: true,
        size: 99291840,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    GPURenderPassEncoder9.end();
    const GPUCommandEncoder20 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUCommandBuffer18 = GPUCommandEncoder20.finish();
    GPUQueue10.submit([GPUCommandBuffer18]);
    const GPUBuffer46 = GPUDevice3.createBuffer({
        label: "GPUBuffer46",
        mappedAtCreation: false,
        size: 265839052,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUTextureView18 = GPUTexture11.createView({
        aspect: "depth-only",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "depth24plus",
        label: "GPUTextureView18"
    });
    const GPUQuerySet16 = GPUDevice3.createQuerySet({
        count: 3279,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    const string84 = GPURenderPipeline10.label
    GPUBuffer33.unmap();
    const GPUSupportedFeatures14 = GPUAdapter6.features
    const boolean7 = GPUAdapter5.isFallbackAdapter
    const string85 = GPUTextureView4.label
    const GPUSupportedLimits15 = GPUDevice3.limits
    const GPUSupportedFeatures15 = GPUAdapter4.features
    const GPUBuffer47 = GPUDevice1.createBuffer({
        label: "GPUBuffer47",
        mappedAtCreation: true,
        size: 5171128,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer9 = GPUBuffer47.getMappedRange();
    const GPUComputePassEncoder11 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const string86 = GPUComputePassEncoder11.label
    const string87 = GPURenderPipeline8.label
    const GPUTextureView19 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView19"
    });
    GPUBuffer12.unmap();
    const GPUComputePipeline47 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline47",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline47);
    const GPUComputePipeline48 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline48",
        layout: "auto"
    });
    const GPUQueue35 = GPUDevice2.queue
    GPUQueue35.writeBuffer(GPUBuffer15, 0, typedArray33);
    const GPUBindGroup28 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline47.bindGroup",
        layout: GPUComputePipeline47.getBindGroupLayout(0),
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
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup28);
    GPUComputePassEncoder11.dispatchWorkgroups(256, 183, 31);
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUCommandBuffer19 = GPUCommandEncoder21.finish();
    GPUQueue15.submit([GPUCommandBuffer19]);
    const GPUTexture18 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture18",
        size: {
            width: 752,
            height: 880,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView20 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView20"
    });
    const GPUQuerySet17 = GPUDevice1.createQuerySet({
        count: 1188,
        label: "GPUQuerySet17",
        type: "occlusion"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8687931777780187,
                g: 0.9766914432494239,
                b: 0.12347676490907766,
                a: 0.31783970926487326
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView20,
            depthSlice: 16
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 1256545492,
        occlusionQuerySet: GPUQuerySet17
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer7);
    const GPUSupportedLimits16 = GPUDevice4.limits
    const GPUBuffer48 = GPUDevice3.createBuffer({
        label: "GPUBuffer48",
        mappedAtCreation: false,
        size: 106020748,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer48.mapAsync(GPUMapMode.READ);
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup28);
    GPUComputePassEncoder11.end();
    const GPUBuffer49 = GPUDevice2.createBuffer({
        label: "GPUBuffer49",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    GPUCommandEncoder9.copyBufferToBuffer(GPUBuffer16, 0, GPUBuffer49, 0, 32);
    const GPUCommandBuffer20 = GPUCommandEncoder9.finish();
    const GPUQueue36 = GPUDevice2.queue
    GPUQueue21.writeBuffer(GPUBuffer46, 238017068, typedArray34);
    const GPUQuerySet18 = GPUDevice3.createQuerySet({
        count: 228,
        label: "GPUQuerySet18",
        type: "occlusion"
    });
    const string88 = GPUComputePipeline30.label
    const GPUBuffer50 = GPUDevice4.createBuffer({
        label: "GPUBuffer50",
        mappedAtCreation: false,
        size: 116197716,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
    });
    const GPUSupportedFeatures16 = GPUAdapter2.features
    const GPUBuffer51 = GPUDevice1.createBuffer({
        label: "GPUBuffer51",
        mappedAtCreation: false,
        size: 179753628,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer51.mapAsync(GPUMapMode.READ);
    const ArrayBuffer10 = GPUBuffer51.getMappedRange();
    const GPUBuffer52 = GPUDevice4.createBuffer({
        label: "GPUBuffer52",
        mappedAtCreation: false,
        size: 91898616,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer52.mapAsync(GPUMapMode.READ);
    const GPUBindGroupLayout3 = GPUComputePipeline13.getBindGroupLayout(0);
    const boolean8 = GPUAdapter1.isFallbackAdapter
    const string89 = GPUDevice1.label
    const GPUBuffer53 = GPUDevice3.createBuffer({
        label: "GPUBuffer53",
        mappedAtCreation: false,
        size: 212788516,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer53.mapAsync(GPUMapMode.READ);
    const ArrayBuffer11 = GPUBuffer53.getMappedRange();
    const string90 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder10.setPipeline(GPURenderPipeline4);
    const GPUSupportedFeatures17 = GPUAdapter6.features
    const GPUSupportedLimits17 = GPUAdapter5.limits
    const string91 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder10.end();
    const GPUCommandBuffer21 = GPUCommandEncoder17.finish();
    const string92 = GPUTextureView13.label
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string93 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder22 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUCommandBuffer22 = GPUCommandEncoder22.finish();
    GPUQueue5.submit([GPUCommandBuffer22]);
    const string94 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUComputePassEncoder12 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUComputePipeline49 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline49",
        layout: "auto"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline49);
    const GPUComputePipeline50 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline50",
        layout: "auto"
    });
    const GPUQueue37 = GPUDevice0.queue
    GPUQueue37.writeBuffer(GPUBuffer0, 0, typedArray35);
    const GPUBindGroup29 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline49.bindGroup",
        layout: GPUComputePipeline49.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup29);
    GPUComputePassEncoder12.dispatchWorkgroups(163, 174, 49);
    const GPUTexture19 = GPUDevice3.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb9e5ufloat",
        label: "GPUTexture19",
        size: {
            width: 1995,
            height: 1762,
            depthOrArrayLayers: 55
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb9e5ufloat"]
    });
    const GPUBuffer54 = GPUDevice4.createBuffer({
        label: "GPUBuffer54",
        mappedAtCreation: false,
        size: 171725932,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup29);
    const GPUSupportedLimits18 = GPUAdapter11.limits
    const GPUBuffer55 = GPUDevice1.createBuffer({
        label: "GPUBuffer55",
        mappedAtCreation: true,
        size: 231664380,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    });
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBuffer56 = GPUDevice0.createBuffer({
        label: "GPUBuffer56",
        mappedAtCreation: false,
        size: 47641356,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer56.mapAsync(GPUMapMode.READ);
    const string95 = GPUBuffer48.label
    const GPUTextureView21 = GPUTexture0.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "rgba8sint",
        label: "GPUTextureView21"
    });
    GPUComputePassEncoder12.end();
    const GPUBuffer57 = GPUDevice0.createBuffer({
        label: "GPUBuffer57",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE
    });
    GPUCommandEncoder23.copyBufferToBuffer(GPUBuffer14, 0, GPUBuffer57, 0, 64);
    const GPUCommandBuffer23 = GPUCommandEncoder23.finish();
    const string96 = GPUQueue10.label
    GPUBuffer46.unmap();
    const GPUCommandEncoder24 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUComputePassEncoder13 = GPUCommandEncoder24.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUComputePipeline51 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline51",
        layout: "auto"
    });
    const GPUQueue38 = GPUDevice1.queue
    GPUQueue38.writeBuffer(GPUBuffer7, 0, typedArray36);
    const GPUBindGroup30 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline51.bindGroup",
        layout: GPUComputePipeline51.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer7
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer8
            }
        }]
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup30);
    const string97 = GPUCommandEncoder24.label
    const GPUAdapter13 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string98 = GPUCommandEncoder24.label
    const GPUCommandEncoder25 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const GPUTexture20 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture20",
        size: {
            width: 81,
            height: 1014,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView22 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView22"
    });
    const GPUQuerySet19 = GPUDevice1.createQuerySet({
        count: 2166,
        label: "GPUQuerySet19",
        type: "occlusion"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder25.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4384918767500937,
                g: 0.3201825685351778,
                b: 0.8832889798993149,
                a: 0.8493187948286749
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView22,
            depthSlice: 30
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3375578966,
        occlusionQuerySet: GPUQuerySet19
    });
    const string99 = GPURenderPassEncoder11.label
    const string100 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer7);
    GPUQueue32.writeBuffer(GPUBuffer23, 36, typedArray37);
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const string101 = GPUBuffer20.label
    GPURenderPassEncoder11.end();
    const GPUCommandBuffer24 = GPUCommandEncoder25.finish();
    const string102 = GPUCommandEncoder24.label
    const GPUTexture21 = GPUDevice4.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture21",
        size: {
            width: 2634,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8snorm"]
    });
    const GPUSupportedLimits19 = GPUDevice0.limits
    const string103 = GPUTextureView21.label
    const GPUCommandEncoder26 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const GPUTexture22 = GPUDevice4.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture22",
        size: {
            width: 3733,
            height: 2428,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView23 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "bgra8unorm",
        label: "GPUTextureView23"
    });
    const GPUQuerySet20 = GPUDevice4.createQuerySet({
        count: 1971,
        label: "GPUQuerySet20",
        type: "occlusion"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder26.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6873909793859267,
                g: 0.19856179181776623,
                b: 0.5320474023197111,
                a: 0.6625572767163682
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 4114281498,
        occlusionQuerySet: GPUQuerySet20
    });
    const string104 = GPURenderPassEncoder12.label
    const GPUComputePipeline52 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline52",
        layout: "auto"
    });
    const GPUQueue39 = GPUDevice1.queue
    GPUQueue39.writeBuffer(GPUBuffer7, 0, typedArray38);
    const GPUBindGroup31 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline52.bindGroup",
        layout: GPUComputePipeline52.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer7
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer8
            }
        }]
    });
    const string105 = GPUQuerySet8.label
    const boolean9 = GPUAdapter6.isFallbackAdapter
    const GPURenderPipeline12 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule12,
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
                        srcFactor: "constant"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule13
        }
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline12);
    GPUComputePassEncoder13.end();
    const GPUShaderModule14 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const GPUBuffer58 = GPUDevice3.createBuffer({
        label: "GPUBuffer58",
        mappedAtCreation: false,
        size: 84743040,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer58.mapAsync(GPUMapMode.READ);
    const ArrayBuffer12 = GPUBuffer58.getMappedRange();
    const GPUBuffer59 = GPUDevice2.createBuffer({
        label: "GPUBuffer59",
        mappedAtCreation: true,
        size: 75521812,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GPUSupportedLimits20 = GPUAdapter9.limits
    const string106 = GPUQuerySet15.label
    const GPUComputePassEncoder14 = GPUCommandEncoder24.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const GPUComputePipeline53 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline53",
        layout: "auto"
    });
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline53);
    const GPUBindGroupLayout5 = GPUComputePipeline40.getBindGroupLayout(0);
    const GPUQuerySet21 = GPUDevice0.createQuerySet({
        count: 2744,
        label: "GPUQuerySet21",
        type: "occlusion"
    });
    const GPUShaderModule15 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader15
    });
    const GPUCommandEncoder27 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder27"
    });
    GPUCommandEncoder27.copyBufferToBuffer(GPUBuffer24, 20, GPUBuffer20, 23393504, 4);
    const GPUTextureView24 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView24"
    });
    const GPUComputePipeline54 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline54",
        layout: "auto"
    });
    const GPUQueue40 = GPUDevice2.queue
    GPUQueue40.writeBuffer(GPUBuffer15, 0, typedArray39);
    const GPUBindGroup32 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline54.bindGroup",
        layout: GPUComputePipeline54.getBindGroupLayout(0),
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
    const string107 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue41 = GPUDevice2.queue
    GPUQueue6.writeBuffer(GPUBuffer14, 44, typedArray40);
    const string108 = GPURenderPassEncoder12.label
    const GPUTextureView25 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView25"
    });
    const GPUBuffer60 = GPUDevice0.createBuffer({
        label: "GPUBuffer60",
        mappedAtCreation: true,
        size: 56252528,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX
    });
    const string109 = GPUComputePassEncoder14.label
    const GPUComputePassEncoder15 = GPUCommandEncoder27.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer38);
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const string110 = GPUTextureView14.label
    const GPUSupportedFeatures18 = GPUAdapter10.features
    const GPUSupportedLimits21 = GPUDevice4.limits
    const string111 = GPUBuffer51.label
    const GPUTextureView26 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView26"
    });
    const GPUCommandEncoder28 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder28"
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder28.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const boolean10 = GPUAdapter10.isFallbackAdapter
    const string112 = GPUDevice4.label
    const string113 = GPUComputePassEncoder14.label
    const string114 = GPUQuerySet20.label
    GPUComputePassEncoder14.end();
    const GPUCommandBuffer25 = GPUCommandEncoder24.finish();
    const GPUAdapterInfo4 = GPUAdapter11.info
    const GPUCommandEncoder29 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder29"
    });
    GPUCommandEncoder29.copyBufferToBuffer(GPUBuffer24, 4, GPUBuffer48, 43782280, 8);
    const GPUTexture23 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "GPUTexture23",
        size: {
            width: 162,
            height: 1274,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const string115 = GPUQueue15.label
    const GPUComputePipeline55 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline55",
        layout: "auto"
    });
    const GPUQueue42 = GPUDevice3.queue
    GPUQueue42.writeBuffer(GPUBuffer23, 0, typedArray41);
    const GPUBindGroup33 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline55.bindGroup",
        layout: GPUComputePipeline55.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer43
            }
        }]
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup33);
    const GPUTexture24 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture24",
        size: {
            width: 3063,
            height: 3415,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUAdapter14 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedLimits22 = GPUAdapter5.limits
    const GPUBuffer61 = GPUDevice2.createBuffer({
        label: "GPUBuffer61",
        mappedAtCreation: true,
        size: 138835212,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer13 = GPUBuffer61.getMappedRange();
    const GPUCommandEncoder30 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder30"
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline12);
    const string116 = GPUQuerySet7.label
    const GPUComputePipeline56 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline56",
        layout: "auto"
    });
    const string117 = GPUComputePipeline19.label
    const string118 = GPUCommandEncoder26.label
    const boolean11 = GPUAdapter4.isFallbackAdapter
    const GPUComputePassEncoder17 = GPUCommandEncoder30.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    const string119 = GPUTextureView0.label
    const GPUBindGroupLayout6 = GPUComputePipeline16.getBindGroupLayout(0);
    const GPUTextureView27 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 2,
        format: "r8sint",
        label: "GPUTextureView27"
    });
    const GPUSupportedLimits23 = GPUDevice2.limits
    const GPUSupportedLimits24 = GPUAdapter7.limits
    const GPUTexture25 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture25",
        size: {
            width: 727,
            height: 823,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const GPUTextureView28 = GPUTexture7.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView28"
    });
    GPUComputePassEncoder16.end();
    const GPUCommandBuffer26 = GPUCommandEncoder28.finish();
    const GPUBuffer62 = GPUDevice0.createBuffer({
        label: "GPUBuffer62",
        mappedAtCreation: false,
        size: 244034236,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const GPUAdapter15 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePipeline57 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline57",
        layout: "auto"
    });
    const GPUComputePipeline58 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline58",
        layout: "auto"
    });
    const GPUQueue43 = GPUDevice3.queue
    GPUQueue43.writeBuffer(GPUBuffer23, 0, typedArray42);
    const GPUBindGroup34 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline58.bindGroup",
        layout: GPUComputePipeline58.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer24
            }
        }]
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup34);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline57);
    const GPUComputePipeline59 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline59",
        layout: "auto"
    });
    const GPUQueue44 = GPUDevice3.queue
    GPUQueue44.writeBuffer(GPUBuffer23, 0, typedArray43);
    const GPUBindGroup35 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline57.bindGroup",
        layout: GPUComputePipeline57.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer43
            }
        }]
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup35);
    GPUComputePassEncoder15.dispatchWorkgroups(60, 91, 31);
    const GPURenderPipeline13 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE
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
            module: GPUShaderModule15
        }
    });
    GPURenderPassEncoder12.end();
    const GPUCommandBuffer27 = GPUCommandEncoder26.finish();
    const GPUTexture26 = GPUDevice3.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture26",
        size: {
            width: 1242,
            height: 2889,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView29 = GPUTexture26.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "GPUTextureView29"
    });
    const GPUQuerySet22 = GPUDevice3.createQuerySet({
        count: 698,
        label: "GPUQuerySet22",
        type: "occlusion"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder29.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.981221558178759,
                g: 0.028454679808240457,
                b: 0.9449157896593385,
                a: 0.43840056804439465
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView29
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 2028257350,
        occlusionQuerySet: GPUQuerySet22
    });
    const GPUComputePipeline60 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline60",
        layout: "auto"
    });
    const GPUQueue45 = GPUDevice3.queue
    GPUQueue45.writeBuffer(GPUBuffer23, 0, typedArray44);
    const GPUBindGroup36 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline60.bindGroup",
        layout: GPUComputePipeline60.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer23
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer43
            }
        }]
    });
    const GPUQueue46 = GPUDevice1.queue
    const GPUShaderModule16 = GPUDevice3.createShaderModule({
        label: "fragment",
        code: shader16
    });
    const GPUShaderModule17 = GPUDevice3.createShaderModule({
        label: "vertex",
        code: shader17
    });
    const GPURenderPipeline14 = GPUDevice3.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule16,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline14",
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
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline14);
    GPURenderPassEncoder13.draw(1);
    GPURenderPassEncoder13.draw(6);
    GPUComputePassEncoder17.end();
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder31 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder31"
    });
    const string120 = GPURenderPipeline6.label
    GPURenderPassEncoder13.draw(6);
    GPUQueue13.writeBuffer(GPUBuffer11, 44233264, typedArray45);
    const GPUCommandEncoder32 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder32"
    });
    const string121 = GPUDevice2.label

}
main().catch(console.error);