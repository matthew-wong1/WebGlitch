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
const shader10 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray23 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader9 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader8 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader7 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader6 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray20 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray19 = new Uint8Array([-8175, -8865, -3590, 5380, 966, 157, 1066, -5653, -4544, -9062, 4922, 1482, -1349, 4784, 7553, 337, 5900, 4754, 2873, -481, 542, -4689, 3533, 9000, -6169, 51, -8209, 5660, 431, -8339, -9481, -7551, 5035, 2758, -3593, -826, 9178, 5271, -6321, 881, 2573, 1837, 4723, -3151, 4248, 7680, 233, -5826, 1558, -9531, 8861, 8810, 9147, 2669, 5890, -3004, -8071, 8116, -6666, 4996, -6782, -3387, 4022, 457, 7306, -3181, -8382, 484, -4681, -1532, 7982, 6840, 370, -4637, 2405, -3543, -9799, -198, -8477, 8233, 798, -6721, 2404, 8862, -7447, 4774, 8998, 4045, -8859, -9601, -4721, -963, -6960, -4320, 9334, 628, 5031, -8875, -6549, -1110, 9664, 3803, -8199, -3854, -5914, 5314, 5836, -8818, -203, 6341, 6774, 2516, -3139, 2299, 7392, -7170, -9175, 9151, 3901, 5204, 1789, -6207, -8874, 3846, -2440, -9749, 1705, 6372, -6442, 620, 2889, 7414, -2738, -9485, 3488, -3275, 9966, 6050, -3816, 7115, 2748, -1270, -3388, 7231, 6568, -898, 3578, -6359, 6812, -2410, -8900, 4069, 3507, -6188, 1499, -2214, 4375, -8627, 3869, 1762, 1789, 6402, 7465, 4175, -1592, 547, -7959, 8802, -8661, 8849, -9536, -1633, 2633, 9192, -2850, -2079, 359, -707, 6384, 5255, 7455, 5382, 6691, 1131, -9650, -7223, 1002, -2142, 8918, 1337, 7228, 7633, -8897, -2289, 8250, -2602, 4921, -1947, -7769, 8609, 1312, 8362, -6188, -9388, 3576, -3015, 5822, 376, -4131, -3779, -8057, 2511, -7568, 7550, -342, -6301, -2259, -4585, -7172, -787, -7811, -4780, 6705, -5469, 4221, -8740, 6393, -1359, -1480, 3918, -3659, -2970, -7725, 794, 9633, 691, 7110, 5189, 7034, 2736, -556, 3801, 7179, -4409, -7316, -9564, -3619, 9021, 780, 9566, 2529, -9849, -5164, -1098, 3426, -7470, 2794, 1211, 6196, 1689, 6428, 2034, 8337, -68, 8551, -5951, 403, -5610, 847, 5466, -4681, -6348, -3714, -1322, 6513, 5852, -6054, 4242, 7904, -7305, 4173, 5703, -7928, -2271, -8715, 9818, -7782, 1861, 5641, -8389, 7512, -8926, 9758, -8012, -2550, 5986, 8417, -1099, 1696, 5406, -7787, -8041, 384, -1190, -1679, 4300, 7101, -5132, -8898, -4205, -2096, 2831, -9041, 9002, -4604, -9741, 5111, 3947, 4401, -3336, 5948, 5525, -5327, 3696, -5302, 9780, -7204, -98, 189, -8801, 347, -82, -9729, 855, 823, -221, 4413, 9213, -7905, -5142, 8943, -3762, -1439, 6946, 9372, -4655, -2019, 6699, -8097, 1831, 6537, -9492, -5786, 9185, -8980, 8907, 9992, 999, -7710, 9442, -3241, -3504, 3522, 6081, -6002, 5114, 196, -3649, -6350, 4467, 4988, -2559, -1151, 3825, 7106, 9728, -4302, 7304, -8150, 7564, 8484, 3606, -2722, 1537, 4835, 9105, -4922, 7745])
const typedArray18 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader5 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray17 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray16 = new Uint8Array([802, -498, -7959, 9891])
const typedArray15 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray14 = new Int8Array([9217, -9112, 7139, -1602, -8306, -6975, -5008, -8911, 3462, 5472, 2106, -4563, -4008, 8598, 3830, -6876, 5984, -7644, -8764, -6569, -7821, 6915, -4557, -1736, 2549, -8501, 3228, -1228, 1466, 5271, -5438, -5074, 6990, 9382, -323, -9068, 7823, -578, 5843, -7419, -390, 9326, 6505, 3466, -4772, 2971, -6153, 5583, -5874, 5291, -3212, 8510, -8923, -5610, -8332, 242])
const typedArray13 = new Uint8Array([3803, -7872, -2957, 8201, 7240, -9287, -9533, 9266, -5074, 6285, -1712, -6389, -4862, 5554, -4930, 9717, -2387, 4539, -527, 2814, 9300, -3689, 9307, -589])
const typedArray12 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray11 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray10 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray9 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray8 = new Int8Array([1014, -9814, 5, -5826])
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray6 = new Float32Array([-2131])
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader4 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray3 = new Float32Array([-6722, 5467, 7298, -9727, -1507, 2635, -3685, -8167])
const shader3 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray2 = new Int8Array([-7414, 8509, 5413, 6261, 5565, -1930, -1238, 9541, 1882, 7286, 4420, 3820, -7885, 3148, 8821, -5820, -667, -8739, 3478, -7010, 903, -8797, 9659, -5648, 9395, -2171, -111, 8936, -6982, -6192, -6229, -9466, 5920, -2250, 3889, -8508, 1432, 6263, 7205, 6141, -8637, -2168, -997, -5847, -5385, 6578, -1566, 6153, 2455, -9241, 8435, -6113, 4233, -9215, -1206, 2557, -714, 8990, 5643, 2, 1659, 5101, 513, -8823, -43, -3758, -7898, 2064, 7824, -850, 6594, -2668, -7631, 3605, -2461, -1702, -5075, 9134, -8995, -2852, 5367, -3362, 997, 2763, -5630, 1140, 1948, -7406, -2726, 797, 6256, -2704, -291, -6841, 5307, -8874, -7822, -9604, -2411, 7074, -3120, 3590, -4420, -3082, -5326, -150, -8017, 8873, -481, 7880, 2755, 3955, 7329, -3005, -1659, -1618, -6712, 5832, 2237, 3553, -8379, -1655, 3033, 7277, -6668, -5954, 7851, 2401, -3696, 2041, -167, 8018, 7380, 9031, -3126, -9830, -4230, 2609, 2824, 2392, -5335, -7574, -1180, -8434, -1963, 1546, 9846, -2257, -8771, 3607, -102, -6125, -5134, 4390, 7049, -9257, -3845, -3668, -5794, 3127, 8985, -1230, 3457, -5383, 3765, 4866, -3766, -6258, 6623, 5497, -8746, -6521, 3730, 7024, -2195, -1665, -1102, -1454, -80, 8780, -569, -623, -9867, -1406, -635, -8035, -5004, 6212, 6628, 515, -166, 3928, -8599, -4021, 3878, -5673, 4588, 1755, 1212, 1799, 9730, -9106, 9569, 372, -7324, 4455, -2790, -159, 5136, 3260, -7991, -8027, -2280, -8841, 5714, 6629, -9869, 8965, -8962, 1695, 4637, 8737, -3356, 5499, -6534, 1021, -1783, -6095, -8697, -75, 3608, 6978, -5637, -1908, 233, -7322, -2506, -6616, -6572, -9676, -4961, -2247, 2394, 6943, 5151, 8999, 7838, -235, -4782, -9738, -6023, 4877, 9458, -7511, 2874, 4299, -2882, -6309, -3889, 7239, 6501, 7027, 6803, -4998, -7509, -5324, 4341, -1666, 9595, -9926, -1564, -4612, 4236, -7525, -9954, 1904, 412, 67, -5706, 5176, 7349, -529, -3530, 9129, 9510, -6598, 1168, -7791, 1755, -2319, -5156, -3381, -5204, 192, 4242, 2964, 5835, 8601, 7586, -215, -6632, -7617, -5228, 3658, 8498, -2240, -3713, -2129, -9624, 5755, -3183, -135, 5412, -3159, 7240, -4396, 6029, 621, 2740, 2925, 390, -5137, -964, 7713, -4036, -8879, 4191, 2424, -6405, -1626, 6782, 998, -7130, 457, 9998, 3205, 2268, -4277, -5552, 2243, -413, 8653, 5972, 8650, -5351, 4246, -7228, -6508, -2637, 4997, 2523, 3466, 3993, -1074, 2330, 1705, -9510, -2769, -4590, -8710, -6344, 6725, -6099, 7419, -1894, -7730, -8224, 5757, 2461, -6291, -897, -4270, 4172, -4750, 6632, 5228, -732, -3698, 9448, -2254, -1881, -5023, 7858, -8503, 270, 5788, -4971, 3468])
const typedArray1 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader2 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader0 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 1629,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const string0 = GPUQuerySet0.type
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture0",
        size: {
            width: 2960,
            height: 1360,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView0"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.920789839332683,
                g: 0.5589235072646916,
                b: 1.176394048142816,
                a: 1.4134883135742773
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 2782053333,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 181550848,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST
    });
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUQueue0 = GPUDevice0.queue
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
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
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    });
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
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
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 60593452,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const boolean0 = GPUAdapter1.isFallbackAdapter
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture1",
        size: {
            width: 628,
            height: 824,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2702731096924034,
                g: 0.5339139658802039,
                b: 1.2735523191128837,
                a: 0.15323887173771533
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView1,
            depthSlice: 14
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 2766105333,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder1.end();
    const string1 = GPUComputePipeline0.label
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer1 = GPUCommandEncoder1.finish();
    GPUQueue0.submit([GPUCommandBuffer1]);
    const GPUAdapterInfo1 = GPUAdapter0.info
    const GPUTextureView2 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView2"
    });
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture2",
        size: {
            width: 2796,
            height: 2373,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 8,
        format: "rg8unorm",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.04166121563385761,
                g: 0.4268865361680825,
                b: 0.3227398727493531,
                a: 0.47862324949775714
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView3
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 2709178369,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder2.end();
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture3",
        size: {
            width: 532,
            height: 664,
            depthOrArrayLayers: 44
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8sint"]
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 3539,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
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
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string2 = GPURenderPipeline0.label
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUSupportedFeatures0 = GPUAdapter1.features
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
    const GPUSupportedFeatures1 = GPUAdapter1.features
    const GPUSupportedFeatures2 = GPUAdapter0.features
    const string3 = GPUComputePipeline0.label
    const string4 = GPUComputePipeline0.label
    const string5 = GPUTextureView3.label
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    GPUComputePassEncoder1.end();
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture4",
        size: {
            width: 306,
            height: 3128,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView4 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1377241240449771,
                g: 1.7913542120514812,
                b: 0.6057366411309191,
                a: 1.6254807202079253
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 639171169,
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
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline1);
    const GPUComputePassEncoder2 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    GPUComputePassEncoder2.end();
    const string6 = await navigator.gpu.getPreferredCanvasFormat();
    const string7 = GPURenderPipeline0.label
    const string8 = GPURenderPipeline1.label
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture5",
        size: {
            width: 33,
            height: 48,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView5 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.862712447215208,
                g: 1.5072068173559474,
                b: 1.539254004063291,
                a: 1.2012471878909718
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView5,
            depthSlice: 20
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 2108155591,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "src-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline2",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder4.draw(3);
    const GPUSupportedFeatures3 = GPUDevice0.features
    const GPUComputePassEncoder3 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder3.end();
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedLimits0 = GPUAdapter2.limits
    const GPUComputePassEncoder4 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline0);
    const string9 = GPUCommandEncoder2.label
    GPUQueue0.writeBuffer(GPUBuffer0, 58562304, typedArray2);
    GPURenderPassEncoder4.draw(10);
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline2);
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup0);
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 2210,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const string10 = GPUQueue0.label
    const GPUSupportedLimits1 = GPUDevice0.limits
    GPUComputePassEncoder4.end();
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 1496,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline1);
    const GPUComputePassEncoder5 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPUComputePassEncoder5.end();
    const GPUQueue1 = GPUDevice0.queue
    const GPUComputePassEncoder6 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader3
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup1);
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture6",
        size: {
            width: 3289,
            height: 2973,
            depthOrArrayLayers: 12
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView6 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView6"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6171784104405749,
                g: 0.7507210244983302,
                b: 1.7158661942779587,
                a: 0.7176989969223986
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView6
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 3093551106,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPUSupportedFeatures4 = GPUAdapter1.features
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUComputePassEncoder7 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const boolean1 = GPUAdapter2.isFallbackAdapter
    const string11 = GPUTextureView0.label
    const GPUAdapterInfo2 = GPUAdapter1.info
    const string12 = GPUQueue0.label
    const GPUSupportedFeatures5 = GPUDevice0.features
    const string13 = GPURenderPassEncoder4.label
    GPUQueue0.writeBuffer(GPUBuffer0, 8331076, typedArray3);
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string14 = GPURenderPassEncoder5.label
    const string15 = GPUCommandEncoder5.label
    const string16 = GPUTextureView4.label
    const GPUTextureView7 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "rgba8sint",
        label: "GPUTextureView7"
    });
    const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUSupportedLimits2 = GPUAdapter2.limits
    GPUComputePassEncoder7.end();
    const GPUCommandBuffer2 = GPUCommandEncoder6.finish();
    GPUQueue1.submit([GPUCommandBuffer2]);
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const string17 = GPUQuerySet1.type
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
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
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
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
            module: GPUShaderModule3
        }
    });
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "constant"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline4",
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
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline4);
    GPURenderPassEncoder5.draw(10);
    const GPUTextureView8 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView8"
    });
    const string18 = GPUComputePassEncoder6.label
    const GPUTextureView9 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView9"
    });
    const GPUAdapterInfo3 = GPUAdapter3.info
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer3 = GPUCommandEncoder4.finish();
    GPUQueue0.submit([GPUCommandBuffer3]);
    GPURenderPassEncoder3.end();
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder6.dispatchWorkgroups(15, 19, 27);
    const GPUAdapterInfo4 = GPUAdapter3.info
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture7",
        size: {
            width: 31,
            height: 159,
            depthOrArrayLayers: 63
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8sint"]
    });
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader4
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture8",
        size: {
            width: 1844,
            height: 3463,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView10 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView10"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2112787731843864,
                g: 1.3699628465191167,
                b: 1.534214759849723,
                a: 0.5474768488572206
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView10
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 293759404,
        occlusionQuerySet: GPUQuerySet1
    });
    const GPUBindGroupLayout4 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const string19 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline1);
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray4);
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    const GPUTextureView11 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView11"
    });
    const string20 = GPUComputePassEncoder6.label
    GPURenderPassEncoder6.end();
    const GPUCommandBuffer4 = GPUCommandEncoder2.finish();
    GPUQueue0.submit([GPUCommandBuffer4]);
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
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 30785956,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedFeatures6 = GPUAdapter0.features
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer5 = GPUCommandEncoder3.finish();
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgb10a2unorm",
        label: "GPUTexture9",
        size: {
            width: 3798,
            height: 670,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView12 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView12"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4593386987545496,
                g: 1.717056164931436,
                b: 0.11125145851133111,
                a: 0.5045308132460016
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView12
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 2999658276,
        occlusionQuerySet: GPUQuerySet1
    });
    const string21 = GPURenderPassEncoder7.label
    GPURenderPassEncoder7.end();
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture10",
        size: {
            width: 403,
            height: 434,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView13 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView13"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4434489070956942,
                g: 1.9874661884215432,
                b: 0.4741427656410018,
                a: 0.758880488192853
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView13,
            depthSlice: 28
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 2133142331,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder8.end();
    const string22 = GPUQuerySet2.type
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUComputePassEncoder6.end();
    const string23 = GPURenderPipeline4.label
    const GPUComputePassEncoder8 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup0);
    GPUQueue0.submit([GPUCommandBuffer5]);
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8snorm",
        label: "GPUTexture11",
        size: {
            width: 1221,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8snorm"]
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 3490,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const string24 = GPUQuerySet0.label
    const string25 = GPUComputePassEncoder8.label
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture12",
        size: {
            width: 768,
            height: 921,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView14 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgba8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7758689547501068,
                g: 0.06651301455973746,
                b: 1.0136656587520556,
                a: 0.6311702576963147
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView14,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 2960256002,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder9.end();
    const string26 = GPUQuerySet2.label
    const string27 = GPUQuerySet4.count
    const string28 = GPUQuerySet4.type
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture13",
        size: {
            width: 611,
            height: 169,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView15 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView15"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5454663535348812,
                g: 0.4234664064727258,
                b: 1.184264669205393,
                a: 0.38089144694062393
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView15,
            depthSlice: 21
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 3929894677,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer0);
    const string29 = GPUComputePipeline2.label
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 3548,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 318,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup1);
    const string30 = GPUQuerySet2.type
    const string31 = GPUComputePipeline2.label
    GPUQueue1.writeBuffer(GPUBuffer1, 28, typedArray6);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    const string32 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer0);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray7);
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
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture14",
        size: {
            width: 489,
            height: 568,
            depthOrArrayLayers: 32
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView16 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView16"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder8.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.345495732272655,
                g: 1.5881372745163072,
                b: 0.39414894146872403,
                a: 1.2800887931341658
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView16,
            depthSlice: 27
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3078044964,
        occlusionQuerySet: GPUQuerySet1
    });
    const string33 = GPUDevice0.label
    const string34 = GPUCommandEncoder5.label
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 1818,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL
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
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline5);
    const string35 = GPUComputePipeline2.label
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const string36 = GPUQueue1.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline1);
    const GPUAdapterInfo5 = GPUAdapter4.info
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline1);
    const GPUAdapterInfo6 = GPUAdapter1.info
    GPURenderPassEncoder11.draw(10);
    const string37 = GPUQuerySet7.type
    const GPUComputePassEncoder9 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 172803184,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    GPURenderPassEncoder10.end();
    const GPUCommandBuffer6 = GPUCommandEncoder7.finish();
    const string38 = GPUQuerySet4.count
    const string39 = GPURenderPipeline1.label
    const GPUBindGroupLayout5 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE
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
            module: GPUShaderModule3
        }
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline2);
    GPUQueue1.submit([GPUCommandBuffer6]);
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture15",
        size: {
            width: 2320,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8snorm"]
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string40 = GPUDevice0.label
    const string41 = GPUDevice0.label
    const GPUSupportedFeatures7 = GPUAdapter0.features
    const GPUSupportedFeatures8 = GPUDevice0.features
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 1483,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const string42 = GPUComputePassEncoder9.label
    const GPUComputePassEncoder10 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const string43 = GPUQuerySet7.count
    const GPUTextureView17 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView17"
    });
    const string44 = GPUQuerySet4.type
    const string45 = GPUQuerySet7.label
    const string46 = GPURenderPassEncoder11.label
    const GPUSupportedLimits3 = GPUDevice0.limits
    const string47 = GPUTextureView13.label
    const GPUSupportedLimits4 = GPUAdapter5.limits
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture16",
        size: {
            width: 126,
            height: 900,
            depthOrArrayLayers: 59
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView18 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder11.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1488839561102222,
                g: 0.8359450707629374,
                b: 1.536312927583661,
                a: 1.841802990795522
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18,
            depthSlice: 6
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 3693294565,
        occlusionQuerySet: GPUQuerySet8
    });
    const GPUQueue2 = GPUDevice0.queue
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer0);
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "GPUTexture17",
        size: {
            width: 418,
            height: 834,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba32sint"]
    });
    const string48 = GPURenderPipeline2.label
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 262709012,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST
    });
    GPUComputePassEncoder9.end();
    const GPUSupportedFeatures9 = GPUDevice0.features
    const string49 = GPURenderPipeline5.label
    const string50 = GPUComputePipeline3.label
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray8);
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray9);
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
    const GPUSupportedLimits5 = GPUAdapter0.limits
    const GPUSupportedFeatures10 = GPUAdapter3.features
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray10);
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
    const string51 = GPUDevice0.label
    const string52 = GPURenderPassEncoder11.label
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline3);
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 2590,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPUTextureView19 = GPUTexture15.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8snorm",
        label: "GPUTextureView19"
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder12.draw(5);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQueue3 = GPUDevice0.queue
    const boolean2 = GPUAdapter2.isFallbackAdapter
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer0);
    GPUComputePassEncoder10.setPipeline(GPUComputePipeline3);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray11);
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
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder10.dispatchWorkgroups(155, 146, 44);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder8.dispatchWorkgroups(250, 158, 29);
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 1302,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const string53 = GPUTextureView15.label
    const GPUSupportedFeatures11 = GPUDevice0.features
    const string54 = GPUComputePassEncoder10.label
    const string55 = GPUComputePassEncoder8.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline0);
    const string56 = GPUComputePipeline0.label
    const GPUSupportedFeatures12 = GPUAdapter3.features
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray12);
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
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16sint",
        label: "GPUTexture18",
        size: {
            width: 107,
            height: 3386,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16sint"]
    });
    const GPUSupportedFeatures13 = GPUDevice0.features
    const GPUComputePassEncoder11 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup5);
    const GPUTextureView20 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 2,
        format: "rgba8sint",
        label: "GPUTextureView20"
    });
    const GPUAdapterInfo7 = GPUAdapter6.info
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
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
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule4
        }
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder8.dispatchWorkgroups(230, 112, 33);
    GPUComputePassEncoder10.end();
    const string57 = GPUCommandEncoder11.label
    const GPUSupportedLimits6 = GPUAdapter1.limits
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder8.end();
    const string58 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture19",
        size: {
            width: 798,
            height: 251,
            depthOrArrayLayers: 24
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8snorm"]
    });
    GPURenderPassEncoder11.end();
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder12 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "GPUTexture20",
        size: {
            width: 2555,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32sint"]
    });
    const string59 = GPUCommandEncoder11.label
    GPUQueue0.writeBuffer(GPUBuffer0, 27647752, typedArray13);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline3);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder12.dispatchWorkgroups(203, 166, 1);
    const string60 = GPUQuerySet3.label
    const GPUAdapterInfo8 = GPUAdapter4.info
    const string61 = GPUCommandEncoder9.label
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline3);
    const GPUSupportedFeatures14 = GPUDevice0.features
    const string62 = GPUQuerySet10.count
    const GPUBindGroupLayout6 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUSupportedFeatures15 = GPUAdapter5.features
    const GPUTextureView21 = GPUTexture13.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView21"
    });
    const string63 = GPUQuerySet7.type
    const string64 = GPURenderPipeline5.label
    const string65 = GPUComputePipeline2.label
    const string66 = GPURenderPassEncoder12.label
    const string67 = GPUQuerySet6.label
    GPUComputePassEncoder11.end();
    const GPUCommandBuffer7 = GPUCommandEncoder12.finish();
    const string68 = GPUQuerySet4.type
    const string69 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture21",
        size: {
            width: 75,
            height: 936,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const GPUTextureView22 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView22"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5702673376871248,
                g: 1.4936100002552648,
                b: 1.866734110959114,
                a: 0.16597021263708545
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView22,
            depthSlice: 3
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 4129665090,
        occlusionQuerySet: GPUQuerySet1
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 131310560, typedArray14);
    GPURenderPassEncoder12.end();
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const boolean3 = GPUAdapter7.isFallbackAdapter
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture22",
        size: {
            width: 953,
            height: 77,
            depthOrArrayLayers: 19
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView23 = GPUTexture22.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgba16float",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4572324520011795,
                g: 1.1993881849883818,
                b: 0.4468012042985552,
                a: 1.0109441389669322
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView23,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1798157734,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder14.draw(4);
    const GPUCommandBuffer8 = GPUCommandEncoder13.finish();
    const GPUComputePassEncoder13 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUTextureView24 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView24"
    });
    const string70 = GPUQuerySet9.type
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray15);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    const string71 = GPUComputePassEncoder13.label
    const GPUSupportedFeatures16 = GPUAdapter1.features
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPUCommandBuffer9 = GPUCommandEncoder8.finish();
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray16);
    const GPUTextureView25 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView25"
    });
    const string72 = GPURenderPipeline1.label
    const GPUComputePassEncoder14 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const GPUTextureView26 = GPUTexture20.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba32sint",
        label: "GPUTextureView26"
    });
    const GPUSupportedFeatures17 = GPUAdapter7.features
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray17);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
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
    const string73 = GPUComputePipeline0.label
    GPUQueue3.submit([GPUCommandBuffer9]);
    const boolean4 = GPUAdapter0.isFallbackAdapter
    GPUComputePassEncoder12.end();
    const GPUComputePassEncoder15 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const string74 = GPUTextureView24.label
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUSupportedLimits7 = GPUAdapter1.limits
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline4);
    const GPUSupportedLimits8 = GPUAdapter6.limits
    const boolean5 = GPUAdapter7.isFallbackAdapter
    const GPUSupportedFeatures18 = GPUDevice0.features
    const string75 = GPUQuerySet1.label
    const string76 = GPURenderPipeline3.label
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture23",
        size: {
            width: 642,
            height: 831,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView27 = GPUTexture23.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r8unorm",
        label: "GPUTextureView27"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9245832275895198,
                g: 1.704399288844811,
                b: 0.8488533177598909,
                a: 0.511384090629585
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView27,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 1016690839,
        occlusionQuerySet: GPUQuerySet9
    });
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8sint",
        label: "GPUTexture24",
        size: {
            width: 960,
            height: 1087,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8sint"]
    });
    const string77 = GPURenderPipeline1.label
    const GPUSupportedLimits9 = GPUAdapter1.limits
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const string78 = GPUDevice0.label
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture25",
        size: {
            width: 2432,
            height: 192,
            depthOrArrayLayers: 56
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView28 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba16float",
        label: "GPUTextureView28"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8516906912655915,
                g: 0.18889916067211732,
                b: 0.9773117635019093,
                a: 1.5483548799924745
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView28
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 447612773,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUSupportedFeatures19 = GPUDevice0.features
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture26",
        size: {
            width: 183,
            height: 251,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView29 = GPUTexture26.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView29"
    });
    const GPURenderPassEncoder17 = GPUCommandEncoder17.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8825908222866845,
                g: 0.6548900123562571,
                b: 0.9435452874539321,
                a: 0.8788024258568328
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView29,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder17",
        maxDrawCount: 3920267166,
        occlusionQuerySet: GPUQuerySet8
    });
    GPURenderPassEncoder15.end();
    GPURenderPassEncoder13.end();
    const GPUCommandBuffer10 = GPUCommandEncoder9.finish();
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader5
    });
    const string79 = GPUDevice0.label
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 84056140,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    });
    const GPUSupportedFeatures20 = GPUAdapter1.features
    const string80 = GPUQuerySet7.label
    const GPUComputePassEncoder16 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    GPURenderPassEncoder14.end();
    GPUComputePassEncoder15.end();
    const GPUComputePassEncoder17 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    GPUQueue2.submit([GPUCommandBuffer8]);
    GPUQueue3.writeBuffer(GPUBuffer1, 0, typedArray18);
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
    GPUQueue3.writeBuffer(GPUBuffer0, 63015388, typedArray19);
    const string81 = GPUQuerySet5.count
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba32float",
        label: "GPUTexture27",
        size: {
            width: 158,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32float"]
    });
    const GPUSupportedFeatures21 = GPUDevice0.features
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline4);
    GPUQueue1.writeBuffer(GPUBuffer1, 0, typedArray20);
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
    GPUComputePassEncoder17.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder17.dispatchWorkgroups(209, 37, 45);
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALL
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    const string82 = GPUComputePipeline1.label
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder16.draw(10);
    const GPUBuffer8 = GPUDevice0.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: true,
        size: 101697532,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE
    });
    const string83 = GPUTextureView10.label
    const GPUAdapterInfo9 = GPUAdapter0.info
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline2);
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const string84 = GPUCommandEncoder18.label
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader6
    });
    const string85 = GPUTextureView2.label
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule6,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    const GPUSupportedFeatures22 = GPUDevice0.features
    const GPUBindGroupLayout7 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTextureView30 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView30"
    });
    const GPUSupportedLimits10 = GPUDevice0.limits
    const string86 = GPUTextureView5.label
    const boolean6 = GPUAdapter7.isFallbackAdapter
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder14.dispatchWorkgroups(122, 142, 2);
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePassEncoder18 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    GPURenderPassEncoder16.draw(6);
    const string87 = GPUQueue1.label
    const string88 = GPUQueue3.label
    const GPUBindGroupLayout8 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: true,
        size: 133071372,
        usage: GPUBufferUsage.STORAGE
    });
    const GPUSupportedLimits11 = GPUDevice0.limits
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline2);
    const GPUCommandBuffer11 = GPUCommandEncoder19.finish();
    const string89 = GPUQuerySet1.count
    const string90 = GPUQuerySet6.type
    const string91 = GPUComputePassEncoder16.label
    const GPUBuffer10 = GPUDevice0.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: true,
        size: 48481260,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const GPUCommandEncoder20 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    GPURenderPassEncoder17.setVertexBuffer(0, GPUBuffer0);
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader7
    });
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const boolean7 = GPUAdapter1.isFallbackAdapter
    const string92 = GPUQuerySet0.label
    const string93 = GPUQuerySet10.label
    GPUQueue0.submit([GPUCommandBuffer10]);
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: true,
        size: 11160684,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE
    });
    const string94 = GPUComputePipeline1.label
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 65479616,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const string95 = GPURenderPipeline6.label
    const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUQuerySet11 = GPUDevice0.createQuerySet({
        count: 46,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const string96 = GPUComputePipeline0.label
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader8
    });
    const GPUSupportedLimits12 = GPUAdapter8.limits
    const string97 = GPUTextureView13.label
    const string98 = GPUQuerySet6.count
    const GPUBindGroupLayout9 = GPUComputePipeline5.getBindGroupLayout(0);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup10);
    GPURenderPassEncoder16.setVertexBuffer(0, GPUBuffer0);
    const string99 = GPURenderPassEncoder17.label
    const GPUSupportedLimits13 = GPUDevice0.limits
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const string100 = GPUComputePipeline6.label
    const GPUComputePassEncoder19 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder19"
    });
    GPURenderPassEncoder16.end();
    const GPUCommandBuffer12 = GPUCommandEncoder16.finish();
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 2782,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture28",
        size: {
            width: 1716,
            height: 727,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["r32uint"]
    });
    const string101 = GPUDevice0.label
    const GPUCommandBuffer13 = GPUCommandEncoder18.finish();
    const string102 = GPURenderPipeline7.label
    GPURenderPassEncoder17.setPipeline(GPURenderPipeline2);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder14.dispatchWorkgroups(125, 149, 34);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup7);
    const string103 = GPUQuerySet1.count
    const GPUQueue4 = GPUDevice0.queue
    const GPUAdapterInfo10 = GPUAdapter6.info
    const GPUSupportedFeatures23 = GPUAdapter1.features
    const GPUTexture29 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture29",
        size: {
            width: 658,
            height: 46,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView31 = GPUTexture29.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView31"
    });
    const GPURenderPassEncoder18 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6371709681909947,
                g: 1.5401434193506132,
                b: 1.782738183733035,
                a: 1.633323255562268
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView31,
            depthSlice: 20
        }],
        label: "GPURenderPassEncoder18",
        maxDrawCount: 1665946868,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUSupportedFeatures24 = GPUDevice0.features
    const string104 = GPUQueue0.label
    const string105 = GPUQuerySet2.type
    const GPUSupportedFeatures25 = GPUDevice0.features
    const string106 = GPUTextureView18.label
    const string107 = GPUComputePassEncoder17.label
    GPUQueue0.submit([GPUCommandBuffer11]);
    const GPUAdapterInfo11 = GPUAdapter6.info
    const string108 = GPUTextureView4.label
    const string109 = GPURenderPipeline6.label
    const GPUBuffer13 = GPUDevice0.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 182935028,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const string110 = GPUComputePassEncoder13.label
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 1193,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPUBindGroupLayout10 = GPUComputePipeline5.getBindGroupLayout(0);
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder18.dispatchWorkgroups(9, 190, 35);
    const string111 = GPUComputePassEncoder16.label
    GPUQueue2.writeBuffer(GPUBuffer1, 0, typedArray21);
    const GPUBindGroup13 = GPUDevice0.createBindGroup({
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
    const string112 = GPUDevice0.label
    const GPUSupportedLimits14 = GPUAdapter4.limits
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture30",
        size: {
            width: 387,
            height: 485,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView32 = GPUTexture30.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba8unorm",
        label: "GPUTextureView32"
    });
    const GPURenderPassEncoder19 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10371749812856157,
                g: 1.3687737730374336,
                b: 1.8842394187157918,
                a: 1.42344486968174
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView32,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder19",
        maxDrawCount: 2555764259,
        occlusionQuerySet: GPUQuerySet9
    });
    const string113 = GPURenderPipeline9.label
    const string114 = GPUTextureView3.label
    const string115 = GPURenderPipeline5.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup8);
    const GPUTextureView33 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 4,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView33"
    });
    const boolean8 = GPUAdapter6.isFallbackAdapter
    GPUComputePassEncoder18.end();
    const GPUCommandBuffer14 = GPUCommandEncoder5.finish();
    const GPUAdapterInfo12 = GPUAdapter4.info
    GPUComputePassEncoder19.end();
    const GPUCommandBuffer15 = GPUCommandEncoder21.finish();
    const GPUTexture31 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8sint",
        label: "GPUTexture31",
        size: {
            width: 1658,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8sint"]
    });
    const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const string116 = GPUComputePipeline3.label
    const string117 = GPUQuerySet2.count
    const string118 = GPURenderPassEncoder19.label
    const GPUQueue5 = GPUDevice0.queue
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUTexture32 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16sint",
        label: "GPUTexture32",
        size: {
            width: 848,
            height: 970,
            depthOrArrayLayers: 40
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16sint"]
    });
    GPUComputePassEncoder14.end();
    const string119 = GPUQueue3.label
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline5);
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray22);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder13.dispatchWorkgroups(80, 57, 36);
    const GPUSupportedFeatures26 = GPUDevice0.features
    GPUQueue2.submit([GPUCommandBuffer15]);
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline6);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline1);
    GPUComputePassEncoder17.end();
    const GPUSupportedFeatures27 = GPUDevice0.features
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder13.end();
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader9
    });
    const GPUComputePassEncoder20 = GPUCommandEncoder14.beginComputePass({
        label: "GPUComputePassEncoder20"
    });
    GPUQueue4.writeBuffer(GPUBuffer1, 0, typedArray23);
    const GPUBindGroup15 = GPUDevice0.createBindGroup({
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
    const string120 = GPUQueue2.label
    const GPUSupportedFeatures28 = GPUAdapter3.features
    const string121 = GPUComputePassEncoder16.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUBindGroupLayout11 = GPUComputePipeline6.getBindGroupLayout(0);
    const boolean9 = GPUAdapter7.isFallbackAdapter
    const GPUSupportedFeatures29 = GPUAdapter2.features
    GPUQueue3.submit([GPUCommandBuffer13]);
    const string122 = GPUComputePipeline8.label
    const string123 = GPUQuerySet9.type
    const GPUSupportedFeatures30 = GPUAdapter4.features
    const string124 = GPUComputePassEncoder16.label
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule5
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    GPUComputePassEncoder20.end();
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader10
    });
    GPURenderPassEncoder18.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder18.draw(5);
    const GPUCommandEncoder24 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUAdapterInfo13 = GPUAdapter9.info
    const GPUQueue6 = GPUDevice0.queue
    const GPUTexture33 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture33",
        size: {
            width: 130,
            height: 231,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const string125 = GPURenderPassEncoder19.label
    const GPUSupportedLimits15 = GPUDevice0.limits
    const string126 = GPUDevice0.label
    const string127 = GPUQuerySet10.type
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline5);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder16.dispatchWorkgroups(105, 28, 53);
    GPURenderPassEncoder17.end();
    const GPUBindGroupLayout12 = GPUComputePipeline9.getBindGroupLayout(0);
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline1);
    const string128 = GPUCommandEncoder24.label
    const string129 = GPURenderPassEncoder19.label
    const string130 = GPUDevice0.label
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUBindGroupLayout13 = GPUComputePipeline6.getBindGroupLayout(0);
    const GPUSupportedLimits16 = GPUDevice0.limits
    const GPUCommandBuffer16 = GPUCommandEncoder14.finish();
    const GPUSupportedLimits17 = GPUDevice0.limits
    GPURenderPassEncoder19.end();
    const string131 = GPUComputePassEncoder16.label
    const GPUSupportedLimits18 = GPUAdapter3.limits
    const GPUTexture34 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "GPUTexture34",
        size: {
            width: 1908,
            height: 1044,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView34 = GPUTexture34.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView34"
    });
    const GPURenderPassEncoder20 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3900826032608176,
                g: 0.45701107830515175,
                b: 0.6553271015980557,
                a: 0.7929373944974041
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView34
        }],
        label: "GPURenderPassEncoder20",
        maxDrawCount: 1649186752,
        occlusionQuerySet: GPUQuerySet9
    });

}
main().catch(console.error);