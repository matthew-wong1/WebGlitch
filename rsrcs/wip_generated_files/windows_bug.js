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
// Seed: -3358482688555237066
const typedArray41 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader25 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader24 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray40 = new Float32Array([3218])
const typedArray39 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader23 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray38 = new Int8Array([4201, -3899, 231, -531])
const typedArray37 = new Float32Array([-5565])
const typedArray36 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader22 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray35 = new Uint8Array([7937, 5811, -4926, 7092, -3761, -6719, 4935, 9833, 5677, 7183, 1027, 9371, -8629, 9179, -926, 6752, -2822, 7564, 8428, -2849, 6891, -5084, 4821, 4749, -3738, -9934, -2905, -9407, -5095, 5120, 678, 386, -1885, -9967, 4423, 9903, 8720, 7397, 9378, 1090, -3765, -5282, 9703, -9334, 6554, -6056, -6347, 1780, -9474, 8903, -3093, -6698, 4035, -5281, 1888, 7217, -552, 932, -7380, -6120, -9322, 1018, 8930, 9858, -7893, -3555, -5663, -9022, 580, -4571, -4361, 7089, -1541, -9370, 3470, -718, -6774, 3977, -6644, -6351, 8485, -535, 7781, 5519, -5595, -2339, -1134, 8788])
const typedArray34 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray33 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray32 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray31 = new Float32Array([8961])
const typedArray30 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader21 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const shader20 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray29 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray28 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray27 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray26 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader19 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader18 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader17 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader16 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader15 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader14 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader13 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray25 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader12 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray24 = new Int8Array([7719, 8071, -5705, 3521, -439, -9026, 7560, -6640, 5251, -4921, -2300, -6295, 8797, 8539, -2879, 9399, 1797, 8830, 2104, 8883, 8248, -7240, -346, 3804, -973, -6228, 237, 9054, 7244, -8228, -8703, -8276, -6733, -6189, 9426, -4281, -4180, -3480, 7582, 8822, 6663, -9001, 4777, 2990, 513, 6924, -729, 907, 5907, -7673, -4622, -2567, -5665, -5553, -746, 2600, 3670, -6307, -4867, 7211, -2458, 6704, 822, 5509, -6456, 2593, 8744, -4067, 3200, 6915, 2239, 9306, 6106, 5211, 1908, -6661, -489, 4315, -4172, 9914, 5154, -2952, -8919, -568, 7556, -7641, 9920, 546, 1339, -3280, -781, -6631, -7168, 4708, 4789, 6292, -4437, -5280, 9043, -7452, 3166, 1225, -784, 4964, -1567, 8142, 9184, 5568, 3326, 8036, -1361, -8706, 9544, -2877, 2255, -4183, 2035, -7567, -6563, -7975, 9127, -3747, -3233, 4967, 9483, -5342, -7219, 2296, -59, 5966, -7831, -5180, -1539, -3690, -9281, -6206, -2791, -6950, -5717, -3953, -8779, 900, -5912, 1327, 8769, -4766, -5225, 906, -7186, -3380, -4864, -7434, 1913, -5458, -7674, -4206, -6342, 724, 6743, 8693, 8457, -7587, 912, -4412, -9379, 9356, -3745, -9049, 3595, -3677, -7532, 9636, -4461, -1882, -5260, 8169, 7739, -6256, -9858, -5700, 6575, -2317, -8774, -1915, 824, -6458, -1251, -2504, -1136, -9307, 3424, -2376, -8298, 9917, 1192, 1839, 3854, 456, 4705, -7952, -82, 7435, 1648, 625, 5836, 232, 9284, -5375, 9092, -9901, 8417, -8320, -2336, 1836, 908, 4508, 7682, -26, 2039, 3404, -571, 3931, -6833, 9721, 2660, 8871, 9867, 6847, 7114, -332, 6634, -2355, 3524, -5599, 9513, -3625, -909, 9762, 8702, 442, 3814, -8860, 7335, -9440, -4751, 9684, 6259, 7541, -876, 2033, -456, 6560, 9927, -9620, 7817, -1040, -1268, 4986, -5118, 3661, 5337, 8065, -4326, -4544, 5319, -5752, -5644, -6841, -7518, -7265, -5066, -784])
const typedArray23 = new Float32Array([-3152])
const shader11 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader10 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray22 = new Float32Array([-294, 8323, -9970, -2578, 2486, -5124, 1049, 8659, 7724, 8895, -14, 5509, 2001, -1628, 1186, 823, -6733, -2780, -1243, -3119, 4242, -4173, -7635, -3873, -4962, -3212, 6924, 3619, 6033, -982, 8077, -3859, -2777, 449, -1758, -4742, -6629, -8709, 2765, -8328, -2028, 1172, 280, 4865, -7707, 2109, 7571, -2162, -6270, 2296, -3995, -5288, 1327, -3529, 7611, 8160, -2009, -7397, -4112, 3354, 3776, -1308, 6477, 396, 2157, -3796, 5198, -2387, 5740, 4280, -2034, 7013, -8196, -9493, 859, -1634, -5660, -2512, 630, 2949, 3545, -6952, -2208, -5681, -7322, 9703, 8979, -1773, -8178, 7380, 3860, 3186, 1688, 2393, 8198, -9492, 2708, -6286, -1465, -8194, 2959, 3942, -492, 6496, 9813, -5580, -2772, 6263, -6557, -6794, -3443, -2205, -7679, 2844, -5666, 1521, 5002, -2359, 7170, 8171, 9951, -8350, 3188, 1361, 1799, 3933, -8021, 1995, -3204, -1828, 5239, -7405, 9176, 7225, -7863, -1906, -9178, 1324, 6580, 3729, -7690, 7269, 8196, -9862, -2258, -6047, 4949, 5779, 2170, -4502, 8083, 1029, -449, -7413, 2891, 5470, 2995, 1740, 5185, 1609, -7488, -1763, 3763, 4692, -3883, 4035, -7119, -1888, -6819, -4521, 7465, -513, -6494, -9667, 6579, 3335, 5570, 5065, 6779, -948, 4239, 6870, -1827, 51, -2283, -4729, 5620, -9489, 6356, 3108, -4374, -2528, 8092, -4471, 3737, 6031, -7128, 1409, -3790, -1840, -1238, -6636, -904, -3233, 1571, 5455, 9047, -2476, 691, 3407, 5889, -2383, 1883, 4884, -4131])
const typedArray21 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray20 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray19 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader9 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray18 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray17 = new Float32Array([-5000, 9914, 3443, -7763, 6867, -6740, -2802, -4425, 6743, -8262, -6929, -4115, -868, 1710, -2872, 3490, 54, -8525, 6664, 8420, 1329, -7320, 7018, -8960, 8360, -3210, -5961, -8650, -4063, 4016, -5521, 8642, 2398, -1738, 4076, 8719, 702, 6648, 8852, -8622, -3503, 6593, 1519, -2347, -4429, -3755, 9322, 8369, -6435, -4338, -126, 1100, -7127, 8771, -5245, -5005, 7590, -4293, -5021, 69, 2649, -2566, 6293, 6356, 9475, -4441, -8113, 1801, -679, 2083, -3368, 1234, -216, -7800, 6883, 2559, 543, -8148, 3675, -5153, 8975, -8926, 964, -6911, -2953, -6600, 5341, 7304, -8976, -5299, 1472, 9794, -4688, 3474, -6699, 2344, -6324, -9509, -7675, 9626, -683, -9676, -7766, 9050, -452, -7096, 8954, -7025, -6118, -9926, 8406, 5016, -5452, -3815, -1709, 2271, -9288, -6913, -5391, -5992, 2470, 3109, -699, 3809, -201, -7885, -6152, -5805, 5104, -2915, 4190, -6815, -5373, 5869, 3577, -7205, -6382, -9268, 8148, -9802, 7445, 6355, 9278, 3823, -5639, -7664, -1300, -2207, 6135, 6086, -3009, 5410, -5821, -932, 8032, -5008, 3857, -4140, -8950, 8111, -859, -4600, -6503, -2065, 3037, 4410, 6913, 1739, -8018, 9935, 7033, -8441, -7717, 4728, 2335, -8339, 7267, -724, -755, -5880, 6369, 4952, -687, -6419, -6549, -6593, -3813, -2667, 4533, -822, -5837, -8601, 7287, 3941, 696, 7, -7749, 2324, 5993, 6510, -3169, -7505, -6945, 8137, -8166, -8516, 8972, -3984, 7665, -7477, -1325, 9133, 7998, 2438, -4512, -7618, -1596, 2529, -8533, -5793, 3348, -9033, 7295, 200, 6415, -8539, 1461, -864, 5753, 4952, 6408, 5969, 2846, 7627, 5024, -7860, 8799, 4761, 9851, 7515, -527, 5606, 525, -40, -2031, -8370, 9298, 9022, -5198, -8097, -8641, -7980, 3895, 6803, 7546, 7298, 7625, 491, -1466, -5196, -5723, -2155, -6742, 9236, 3058, -7304, 1737, -3935, 4086, -5746, -7675, 3887, -1129, -4485, -7770, -4584, 2435, 568, 4568, -8391, 8106, -7724, -5170, 3175, 9741, -3005, 8161, -8313, -6716, 2816, 3423, 1648, 1032, 5863, 6342, -5484, 3783, 1630, -2838, 8018, -1718, -2197, -4223, -280, 1865, -8365, -7855, -6374, -6593, 9956, 9492, 4546])
const shader8 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader7 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray16 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray15 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray14 = new Float32Array([1916])
const typedArray13 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray12 = new Int8Array([3319, 4680, 5534, -9881])
const typedArray11 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray10 = new Uint8Array([-5752, 7046, -4713, 2399])
const typedArray9 = new Int8Array([1629, -521, 4418, 613, 2372, 827, -4378, -3399])
const shader6 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray8 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray7 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader5 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray6 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray5 = new Int8Array([-1904, 5295, 7022, -6938])
const typedArray4 = new Float32Array([1427])
const typedArray3 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader4 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray2 = new Uint8Array([-9836, -4852, 6189, -6134])
const shader3 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray1 = new Int8Array([-1317, -6782, 9837, 6934])
const shader2 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader0 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder0.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
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
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUQueue0 = GPUDevice0.queue
    GPUQueue0.writeBuffer(GPUBuffer0, 0, typedArray0);
    const GPUBindGroup0 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline0.bindGroup",
        layout: GPUComputePipeline0.getBindGroupLayout(0),
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    const boolean0 = GPUAdapter0.isFallbackAdapter
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
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray1);
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 2909,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture0",
        size: {
            width: 1930,
            height: 639,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 2128,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6329285852364136,
                g: 0.9465177044445421,
                b: 0.6873615532698683,
                a: 0.5027726211172531
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 2056883366,
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
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline1",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder0.draw(4);
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUSupportedFeatures0 = GPUDevice0.features
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader3
    });
    const string0 = await navigator.gpu.getPreferredCanvasFormat();
    GPUCommandEncoder0.copyBufferToBuffer(GPUBuffer1, 12, GPUBuffer0, 4, 4);
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture1",
        size: {
            width: 550,
            height: 974,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8uint"]
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray2);
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader4
    });
    const string1 = GPUQueue0.label
    const string2 = GPUTextureView0.label
    const string3 = GPUDevice0.label
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: true,
        size: 9881568,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer2.mapAsync(GPUMapMode.READ);
    const string4 = GPUComputePipeline1.label
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture2",
        size: {
            width: 520,
            height: 302,
            depthOrArrayLayers: 49
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView1 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView1"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 334,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.08103904500072656,
                g: 0.9185065986293962,
                b: 0.9615779744718213,
                a: 0.14440948735676307
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView1,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 4211433910,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray3);
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline2);
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 3442,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray4);
    const GPUSupportedFeatures2 = GPUAdapter0.features
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView2"
    });
    GPUQueue1.writeBuffer(GPUBuffer0, 4, typedArray5);
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8uint",
        label: "GPUTexture3",
        size: {
            width: 2644,
            height: 3219,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8uint"]
    });
    const string5 = GPUComputePipeline2.label
    const GPUBindGroupLayout0 = GPUComputePipeline1.getBindGroupLayout(0);
    const string6 = GPUComputePipeline2.label
    const GPUTextureView3 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView3"
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture4",
        size: {
            width: 829,
            height: 24,
            depthOrArrayLayers: 21
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r16float"]
    });
    const GPUTextureView4 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView4"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 992,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4709608705549462,
                g: 0.698163053456202,
                b: 0.3562516969131433,
                a: 0.15360293714219453
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView4,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 3118404039,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.end();
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    GPUBuffer1.unmap();
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer0 = GPUCommandEncoder3.finish();
    GPUBuffer0.unmap();
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray6);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup2);
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline2",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPUCommandEncoder4.copyBufferToBuffer(GPUBuffer1, 16, GPUBuffer0, 0, 0);
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const string7 = GPUComputePipeline0.label
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUQueue3 = GPUDevice0.queue
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    const string8 = GPUTextureView3.label
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline6);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUQueue4 = GPUDevice0.queue
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline6.bindGroup",
        layout: GPUComputePipeline6.getBindGroupLayout(0),
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder0.dispatchWorkgroups(71, 10, 8);
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const GPUSupportedFeatures3 = GPUAdapter0.features
    const GPUSupportedLimits2 = GPUDevice0.limits
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray9);
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUCommandBuffer1 = GPUCommandEncoder5.finish();
    GPUQueue1.submit([GPUCommandBuffer1]);
    const string9 = GPUCommandEncoder4.label
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 3364,
            height: 1851,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView5 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView5"
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 41,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder4.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.734350124242652,
                g: 0.3985869404530531,
                b: 0.5819885055972418,
                a: 0.6481904650390505
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView5
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 307650715,
        occlusionQuerySet: GPUQuerySet5
    });
    GPUComputePassEncoder0.end();
    const GPUCommandBuffer2 = GPUCommandEncoder0.finish();
    // const boolean2 = GPUAdapter0.isFallbackAdapter
    // const string10 = GPUBuffer2.label
    // GPUBuffer2.unmap();
    // const GPUAdapterInfo0 = GPUAdapter0.info
    // const GPUQuerySet6 = GPUDevice0.createQuerySet({
    //     count: 1052,
    //     label: "GPUQuerySet6",
    //     type: "occlusion"
    // });
    // const GPUBuffer3 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer3",
    //     mappedAtCreation: true,
    //     size: 215206516,
    //     usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    // });
    // const ArrayBuffer0 = GPUBuffer3.getMappedRange();
    // GPURenderPassEncoder3.end();
    // const GPUCommandBuffer3 = GPUCommandEncoder4.finish();
    // const string11 = GPUCommandEncoder1.label
    // const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    // const string12 = GPUComputePipeline4.label
    // GPUQueue3.writeBuffer(GPUBuffer0, 4, typedArray10);
    // const string13 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder6"
    // });
    // const GPUComputePassEncoder2 = GPUCommandEncoder6.beginComputePass({
    //     label: "GPUComputePassEncoder2"
    // });
    // const string14 = GPUComputePassEncoder2.label
    // const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline8",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline8);
    // const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline9",
    //     layout: "auto"
    // });
    // const GPUQueue5 = GPUDevice0.queue
    // GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray11);
    // const GPUBindGroup5 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline8.bindGroup",
    //     layout: GPUComputePipeline8.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup5);
    // GPUComputePassEncoder2.dispatchWorkgroups(155, 187, 19);
    // const GPUTextureView6 = GPUTexture4.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "r16float",
    //     label: "GPUTextureView6"
    // });
    // const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder7"
    // });
    // const GPUComputePassEncoder3 = GPUCommandEncoder7.beginComputePass({
    //     label: "GPUComputePassEncoder3"
    // });
    // const GPUAdapter1 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder8"
    // });
    // const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    // GPUQueue3.submit([GPUCommandBuffer4]);
    // const GPUAdapter2 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const string15 = GPUQuerySet6.label
    // const string16 = GPUQuerySet3.label
    // const GPUTextureView7 = GPUTexture4.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "r16float",
    //     label: "GPUTextureView7"
    // });
    // const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule4,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "subtract",
    //                     dstFactor: "src-alpha",
    //                     srcFactor: "src"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "src",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "rg16float",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
    //         }]
    //     },
    //     label: "GPURenderPipeline3",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "cw",
    //         topology: "point-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     }
    // });
    // GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    // const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder9"
    // });
    // const GPUComputePassEncoder4 = GPUCommandEncoder9.beginComputePass({
    //     label: "GPUComputePassEncoder4"
    // });
    // GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray12);
    // const GPUSupportedLimits3 = GPUDevice0.limits
    // const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    // const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline10",
    //     layout: "auto"
    // });
    // const GPUQueue6 = GPUDevice0.queue
    // GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray13);
    // const GPUBindGroup6 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline10.bindGroup",
    //     layout: GPUComputePipeline10.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // const string17 = GPUDevice0.label
    // const GPUTextureView8 = GPUTexture4.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "r16float",
    //     label: "GPUTextureView8"
    // });
    // const GPUBindGroupLayout2 = GPUComputePipeline6.getBindGroupLayout(0);
    // const GPUSupportedFeatures4 = GPUDevice0.features
    // GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    // const GPUSupportedLimits4 = GPUDevice0.limits
    // const string18 = await navigator.gpu.getPreferredCanvasFormat();
    // const string19 = GPURenderPipeline2.label
    // GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray14);
    // const string20 = GPUBuffer2.label
    // GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    // const GPUBindGroupLayout3 = GPUComputePipeline7.getBindGroupLayout(0);
    // const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    // const GPUBuffer4 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer4",
    //     mappedAtCreation: true,
    //     size: 58030952,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    // });
    // const ArrayBuffer1 = GPUBuffer4.getMappedRange();
    // const GPUBuffer5 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer5",
    //     mappedAtCreation: true,
    //     size: 165835104,
    //     usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    // });
    // const ArrayBuffer2 = GPUBuffer5.getMappedRange();
    // const GPUAdapterInfo1 = GPUAdapter2.info
    // const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder10"
    // });
    // const GPUCommandBuffer5 = GPUCommandEncoder10.finish();
    // GPUQueue4.submit([GPUCommandBuffer5]);
    // const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    // const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline11",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder4.setPipeline(GPUComputePipeline11);
    // const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline12",
    //     layout: "auto"
    // });
    // const GPUQueue7 = GPUDevice0.queue
    // GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray15);
    // const GPUBindGroup7 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline11.bindGroup",
    //     layout: GPUComputePipeline11.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    // GPUComputePassEncoder4.dispatchWorkgroups(122, 75, 61);
    // const string21 = GPUComputePipeline4.label
    // const string22 = GPURenderPassEncoder0.label
    // const string23 = GPUTextureView8.label
    // const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    // GPURenderPassEncoder1.end();
    // GPURenderPassEncoder0.draw(6);
    // const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline13",
    //     layout: "auto"
    // });
    // const GPUQueue8 = GPUDevice0.queue
    // GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray16);
    // const GPUBindGroup8 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline13.bindGroup",
    //     layout: GPUComputePipeline13.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // const GPUDevice1 = await GPUAdapter2.requestDevice();
    // const string24 = GPUCommandEncoder9.label
    // const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder11"
    // });
    // const GPUBuffer6 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer6",
    //     mappedAtCreation: false,
    //     size: 159515856,
    //     usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    // });
    // await GPUBuffer6.mapAsync(GPUMapMode.READ);
    // const GPUCommandEncoder12 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder12"
    // });
    // GPURenderPassEncoder0.end();
    // const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    // const GPUSupportedLimits5 = GPUDevice1.limits
    // const ArrayBuffer3 = GPUBuffer6.getMappedRange();
    // const GPUCommandBuffer6 = GPUCommandEncoder11.finish();
    // const GPUQueue9 = GPUDevice1.queue
    // const GPUTexture6 = GPUDevice0.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rg16float",
    //     label: "GPUTexture6",
    //     size: {
    //         width: 348,
    //         height: 258,
    //         depthOrArrayLayers: 51
    //     },
    //     mipLevelCount: 4,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["rg16float"]
    // });
    // const GPUTextureView9 = GPUTexture6.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 2,
    //     format: "rg16float",
    //     label: "GPUTextureView9"
    // });
    // const GPUQuerySet7 = GPUDevice0.createQuerySet({
    //     count: 3739,
    //     label: "GPUQuerySet7",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder4 = GPUCommandEncoder1.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.38248087535440856,
    //             g: 0.33242805396506037,
    //             b: 0.5285759305094565,
    //             a: 0.5165650126943049
    //         },
    //         loadOp: "clear",
    //         storeOp: "store",
    //         view: GPUTextureView9,
    //         depthSlice: 5
    //     }],
    //     label: "GPURenderPassEncoder4",
    //     maxDrawCount: 2901278992,
    //     occlusionQuerySet: GPUQuerySet7
    // });
    // GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    // GPUBuffer5.unmap();
    // GPUCommandEncoder7.copyBufferToBuffer(GPUBuffer0, 8, GPUBuffer6, 50157720, 0);
    // const GPUShaderModule7 = GPUDevice1.createShaderModule({
    //     label: "vertex",
    //     code: shader7
    // });
    // const GPUSupportedFeatures5 = GPUAdapter0.features
    // GPURenderPassEncoder4.end();
    // const string25 = await navigator.gpu.getPreferredCanvasFormat();
    // const string26 = await navigator.gpu.getPreferredCanvasFormat();
    // const boolean3 = GPUAdapter0.isFallbackAdapter
    // const GPUCommandBuffer7 = GPUCommandEncoder1.finish();
    // GPUComputePassEncoder3.end();
    // const GPUCommandBuffer8 = GPUCommandEncoder7.finish();
    // const GPUShaderModule8 = GPUDevice1.createShaderModule({
    //     label: "compute",
    //     code: shader8
    // });
    // const GPUQuerySet8 = GPUDevice0.createQuerySet({
    //     count: 25,
    //     label: "GPUQuerySet8",
    //     type: "occlusion"
    // });
    // const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder13"
    // });
    // const string27 = GPUQuerySet0.label
    // const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule5,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "add",
    //                     dstFactor: "one-minus-constant",
    //                     srcFactor: "one-minus-src"
    //                 },
    //                 color: {
    //                     operation: "add",
    //                     dstFactor: "one-minus-dst-alpha",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "bgra8unorm-srgb",
    //             writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
    //         }]
    //     },
    //     label: "GPURenderPipeline4",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "ccw",
    //         topology: "line-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule3
    //     }
    // });
    // const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule5,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "one-minus-dst",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "rgba8unorm",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline5",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "ccw",
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     }
    // });
    // const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder14"
    // });
    // const GPUCommandBuffer9 = GPUCommandEncoder14.finish();
    // GPUQueue3.submit([GPUCommandBuffer9]);
    // const string28 = GPUDevice1.label
    // const GPUBuffer7 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer7",
    //     mappedAtCreation: false,
    //     size: 52360172,
    //     usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST
    // });
    // GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer7, 11269832, GPUBuffer7, 26080072, 13889320);
    // const GPUSupportedFeatures6 = GPUDevice1.features
    // const GPUSupportedFeatures7 = GPUDevice1.features
    // const GPUTexture7 = GPUDevice1.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "bgra8unorm-srgb",
    //     label: "GPUTexture7",
    //     size: {
    //         width: 3161,
    //         height: 3115,
    //         depthOrArrayLayers: 48
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["bgra8unorm-srgb"]
    // });
    // const GPUTextureView10 = GPUTexture7.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm-srgb",
    //     label: "GPUTextureView10"
    // });
    // const GPUQuerySet9 = GPUDevice1.createQuerySet({
    //     count: 196,
    //     label: "GPUQuerySet9",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder5 = GPUCommandEncoder12.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.49743458757095993,
    //             g: 0.12323272869792179,
    //             b: 0.19261584225537187,
    //             a: 0.7067496580305986
    //         },
    //         loadOp: "clear",
    //         storeOp: "store",
    //         view: GPUTextureView10
    //     }],
    //     label: "GPURenderPassEncoder5",
    //     maxDrawCount: 4032715738,
    //     occlusionQuerySet: GPUQuerySet9
    // });
    // const GPUBuffer8 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer8",
    //     mappedAtCreation: false,
    //     size: 140512228,
    //     usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE
    // });
    // GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer8);
    // const GPUComputePassEncoder5 = GPUCommandEncoder13.beginComputePass({
    //     label: "GPUComputePassEncoder5"
    // });
    // const string29 = GPUComputePassEncoder4.label
    // const string30 = GPUQuerySet4.label
    // const GPUTexture8 = GPUDevice1.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "rg32sint",
    //     label: "GPUTexture8",
    //     size: {
    //         width: 3132,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING,
    //     viewFormats: ["rg32sint"]
    // });
    // GPUComputePassEncoder5.end();
    // GPURenderPassEncoder5.end();
    // const GPUSupportedFeatures8 = GPUAdapter0.features
    // GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    // const GPUSupportedFeatures9 = GPUAdapter2.features
    // const GPUCommandEncoder15 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder15"
    // });
    // const string31 = GPURenderPipeline1.label
    // const string32 = GPUQuerySet7.label
    // const GPUQuerySet10 = GPUDevice0.createQuerySet({
    //     count: 890,
    //     label: "GPUQuerySet10",
    //     type: "occlusion"
    // });
    // const GPUBuffer9 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer9",
    //     mappedAtCreation: false,
    //     size: 31139508,
    //     usage: GPUBufferUsage.MAP_READ
    // });
    // await GPUBuffer9.mapAsync(GPUMapMode.READ);
    // const GPUComputePassEncoder6 = GPUCommandEncoder13.beginComputePass({
    //     label: "GPUComputePassEncoder6"
    // });
    // const GPUTexture9 = GPUDevice0.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgba8unorm",
    //     label: "GPUTexture9",
    //     size: {
    //         width: 656,
    //         height: 11,
    //         depthOrArrayLayers: 25
    //     },
    //     mipLevelCount: 2,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["rgba8unorm-srgb"]
    // });
    // const GPUTextureView11 = GPUTexture9.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgba8unorm",
    //     label: "GPUTextureView11"
    // });
    // const GPUQuerySet11 = GPUDevice0.createQuerySet({
    //     count: 274,
    //     label: "GPUQuerySet11",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder6 = GPUCommandEncoder2.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.7094942549816992,
    //             g: 0.4217680577860401,
    //             b: 0.859953633335096,
    //             a: 0.44352895147916116
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView11,
    //         depthSlice: 13
    //     }],
    //     label: "GPURenderPassEncoder6",
    //     maxDrawCount: 1503675869,
    //     occlusionQuerySet: GPUQuerySet11
    // });
    // const string33 = GPURenderPassEncoder6.label
    // GPUQueue8.writeBuffer(GPUBuffer6, 132794020, typedArray17);
    // const string34 = GPUComputePassEncoder6.label
    // const GPUAdapterInfo2 = GPUAdapter0.info
    // const boolean4 = GPUAdapter2.isFallbackAdapter
    // GPUBuffer9.unmap();
    // const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder16"
    // });
    // const GPUCommandBuffer10 = GPUCommandEncoder16.finish();
    // GPUQueue6.submit([GPUCommandBuffer10]);
    // const GPUAdapterInfo3 = GPUAdapter0.info
    // const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline14",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup5);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline14);
    // const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline15",
    //     layout: "auto"
    // });
    // const GPUQueue10 = GPUDevice0.queue
    // GPUQueue10.writeBuffer(GPUBuffer0, 0, typedArray18);
    // const GPUBindGroup9 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline14.bindGroup",
    //     layout: GPUComputePipeline14.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup9);
    // GPUComputePassEncoder2.dispatchWorkgroups(17, 37, 34);
    // const GPUComputePassEncoder7 = GPUCommandEncoder15.beginComputePass({
    //     label: "GPUComputePassEncoder7"
    // });
    // const string35 = GPUComputePipeline11.label
    // const GPUBuffer10 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer10",
    //     mappedAtCreation: false,
    //     size: 79860088,
    //     usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    // });
    // const ArrayBuffer4 = GPUBuffer10.getMappedRange();
    // const GPUSupportedFeatures10 = GPUDevice0.features
    // const string36 = GPUQueue7.label
    // GPURenderPassEncoder6.end();
    // const GPUBuffer11 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer11",
    //     mappedAtCreation: false,
    //     size: 87432980,
    //     usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    // });
    // const ArrayBuffer5 = GPUBuffer11.getMappedRange();
    // const GPUAdapterInfo4 = GPUAdapter2.info
    // const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    // const GPUDevice2 = await GPUAdapter1.requestDevice();
    // const GPUBuffer12 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer12",
    //     mappedAtCreation: true,
    //     size: 212458100,
    //     usage: GPUBufferUsage.MAP_READ
    // });
    // await GPUBuffer12.mapAsync(GPUMapMode.READ);
    // const GPUSupportedFeatures11 = GPUDevice1.features
    // const GPUShaderModule9 = GPUDevice2.createShaderModule({
    //     label: "compute",
    //     code: shader9
    // });
    // const GPUComputePipeline16 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule9
    //     },
    //     label: "GPUComputePipeline16",
    //     layout: "auto"
    // });
    // const GPUBuffer13 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer13",
    //     mappedAtCreation: false,
    //     size: 48,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    // });
    // const GPUBuffer14 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer14",
    //     mappedAtCreation: false,
    //     size: 32,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    // });
    // const GPUQueue11 = GPUDevice2.queue
    // GPUQueue11.writeBuffer(GPUBuffer13, 0, typedArray19);
    // const GPUBindGroup10 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline16.bindGroup",
    //     layout: GPUComputePipeline16.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer13
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer14
    //         }
    //     }]
    // });
    // const string37 = GPURenderPipeline3.label
    // const GPUTexture10 = GPUDevice0.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "rgba8unorm",
    //     label: "GPUTexture10",
    //     size: {
    //         width: 3078,
    //         height: 433,
    //         depthOrArrayLayers: 46
    //     },
    //     mipLevelCount: 12,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
    //     viewFormats: ["rgba8unorm"]
    // });
    // const GPUTextureView12 = GPUTexture10.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 11,
    //     format: "rgba8unorm",
    //     label: "GPUTextureView12"
    // });
    // const GPUQuerySet12 = GPUDevice0.createQuerySet({
    //     count: 1230,
    //     label: "GPUQuerySet12",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder7 = GPUCommandEncoder2.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.06307481119128511,
    //             g: 0.20523127664207352,
    //             b: 0.9513556687142649,
    //             a: 0.12444500186983809
    //         },
    //         loadOp: "clear",
    //         storeOp: "discard",
    //         view: GPUTextureView12
    //     }],
    //     label: "GPURenderPassEncoder7",
    //     maxDrawCount: 2256935247,
    //     occlusionQuerySet: GPUQuerySet12
    // });
    // GPURenderPassEncoder7.setPipeline(GPURenderPipeline5);
    // const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline17",
    //     layout: "auto"
    // });
    // const GPUQueue12 = GPUDevice0.queue
    // GPUQueue12.writeBuffer(GPUBuffer0, 0, typedArray20);
    // const GPUBindGroup11 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline17.bindGroup",
    //     layout: GPUComputePipeline17.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // const string38 = GPUComputePassEncoder6.label
    // const string39 = GPUCommandEncoder2.label
    // const GPUTexture11 = GPUDevice2.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "r16uint",
    //     label: "GPUTexture11",
    //     size: {
    //         width: 1690,
    //         height: 2164,
    //         depthOrArrayLayers: 19
    //     },
    //     mipLevelCount: 5,
    //     usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["r16uint"]
    // });
    // const GPUComputePipeline18 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule8
    //     },
    //     label: "GPUComputePipeline18",
    //     layout: "auto"
    // });
    // const GPUBuffer15 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer15",
    //     mappedAtCreation: false,
    //     size: 8,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
    // });
    // const GPUBuffer16 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer16",
    //     mappedAtCreation: false,
    //     size: 64,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    // });
    // const GPUQueue13 = GPUDevice1.queue
    // GPUQueue13.writeBuffer(GPUBuffer15, 0, typedArray21);
    // const GPUBindGroup12 = GPUDevice1.createBindGroup({
    //     label: "GPUComputePipeline18.bindGroup",
    //     layout: GPUComputePipeline18.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer15
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer16
    //         }
    //     }]
    // });
    // const GPUAdapterInfo5 = GPUAdapter0.info
    // const GPUCommandEncoder17 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder17"
    // });
    // GPUBuffer2.unmap();
    // const GPUAdapterInfo6 = GPUAdapter0.info
    // const string40 = GPUBuffer12.label
    // const GPUBuffer17 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer17",
    //     mappedAtCreation: false,
    //     size: 153525204,
    //     usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    // });
    // const GPUTextureView13 = GPUTexture5.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 2,
    //     baseMipLevel: 1,
    //     format: "rg16float",
    //     label: "GPUTextureView13"
    // });
    // const GPUSupportedFeatures12 = GPUAdapter2.features
    // const GPUCommandEncoder18 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder18"
    // });
    // const GPUQueue14 = GPUDevice0.queue
    // const GPUQuerySet13 = GPUDevice1.createQuerySet({
    //     count: 1987,
    //     label: "GPUQuerySet13",
    //     type: "occlusion"
    // });
    // const string41 = GPUTextureView1.label
    // GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer17);
    // GPUQueue0.writeBuffer(GPUBuffer6, 131262716, typedArray22);
    // GPUBuffer13.unmap();
    // const GPUShaderModule10 = GPUDevice2.createShaderModule({
    //     label: "fragment",
    //     code: shader10
    // });
    // const GPUShaderModule11 = GPUDevice2.createShaderModule({
    //     label: "vertex",
    //     code: shader11
    // });
    // const GPURenderPipeline6 = GPUDevice2.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "add",
    //                     dstFactor: "zero",
    //                     srcFactor: "one-minus-src"
    //                 },
    //                 color: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "r16float",
    //             writeMask: GPUColorWrite.GREEN
    //         }]
    //     },
    //     label: "GPURenderPipeline6",
    //     layout: "auto",
    //     multisample: {
    //         count: 4
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "cw",
    //         topology: "line-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule11
    //     }
    // });
    // const GPUComputePipeline19 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline19",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup9);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline19);
    // const string42 = GPUCommandEncoder17.label
    // const GPUAdapterInfo7 = GPUAdapter0.info
    // const string43 = await navigator.gpu.getPreferredCanvasFormat();
    // GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray23);
    // const string44 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUComputePassEncoder8 = GPUCommandEncoder18.beginComputePass({
    //     label: "GPUComputePassEncoder8"
    // });
    // const GPUQueue15 = GPUDevice1.queue
    // const GPURenderPipeline7 = GPUDevice2.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "subtract",
    //                     dstFactor: "constant",
    //                     srcFactor: "constant"
    //                 },
    //                 color: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "rgba8unorm-srgb",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.GREEN
    //         }]
    //     },
    //     label: "GPURenderPipeline7",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "back",
    //         frontFace: "ccw",
    //         topology: "triangle-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule11
    //     }
    // });
    // const GPUAdapterInfo8 = GPUAdapter2.info
    // const GPUSupportedLimits6 = GPUDevice1.limits
    // const string45 = await navigator.gpu.getPreferredCanvasFormat();
    // GPUComputePassEncoder7.end();
    // const GPUBuffer18 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer18",
    //     mappedAtCreation: true,
    //     size: 181239136,
    //     usage: GPUBufferUsage.MAP_READ
    // });
    // await GPUBuffer18.mapAsync(GPUMapMode.READ);
    // const GPUSupportedFeatures13 = GPUAdapter1.features
    // const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder19"
    // });
    // const GPUCommandBuffer11 = GPUCommandEncoder19.finish();
    // GPUQueue7.submit([GPUCommandBuffer11]);
    // const GPUTexture12 = GPUDevice1.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "r8unorm",
    //     label: "GPUTexture12",
    //     size: {
    //         width: 2638,
    //         height: 228,
    //         depthOrArrayLayers: 49
    //     },
    //     mipLevelCount: 5,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["r8unorm"]
    // });
    // const GPUTextureView14 = GPUTexture12.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 2,
    //     format: "r8unorm",
    //     label: "GPUTextureView14"
    // });
    // const GPUQuerySet14 = GPUDevice1.createQuerySet({
    //     count: 1355,
    //     label: "GPUQuerySet14",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder8 = GPUCommandEncoder17.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.975374608150217,
    //             g: 0.8098766124029272,
    //             b: 0.8008903927966872,
    //             a: 0.7241967509937518
    //         },
    //         loadOp: "load",
    //         storeOp: "store",
    //         view: GPUTextureView14
    //     }],
    //     label: "GPURenderPassEncoder8",
    //     maxDrawCount: 3672540196,
    //     occlusionQuerySet: GPUQuerySet14
    // });
    // const GPUTextureView15 = GPUTexture0.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm",
    //     label: "GPUTextureView15"
    // });
    // const string46 = GPURenderPassEncoder7.label
    // const string47 = GPURenderPassEncoder7.label
    // GPUQueue15.writeBuffer(GPUBuffer10, 50543452, typedArray24);
    // const GPUSupportedFeatures14 = GPUDevice0.features
    // const GPUCommandEncoder20 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder20"
    // });
    // const GPUCommandBuffer12 = GPUCommandEncoder20.finish();
    // GPUQueue9.submit([GPUCommandBuffer12]);
    // const GPUShaderModule12 = GPUDevice1.createShaderModule({
    //     label: "fragment",
    //     code: shader12
    // });
    // const GPURenderPipeline8 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule12,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "add",
    //                     dstFactor: "one-minus-constant",
    //                     srcFactor: "one-minus-src-alpha"
    //                 }
    //             },
    //             format: "r8unorm",
    //             writeMask: GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline8",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "back",
    //         frontFace: "ccw",
    //         topology: "line-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     }
    // });
    // GPURenderPassEncoder8.setPipeline(GPURenderPipeline8);
    // const GPUQuerySet15 = GPUDevice2.createQuerySet({
    //     count: 3148,
    //     label: "GPUQuerySet15",
    //     type: "occlusion"
    // });
    // const GPUQueue16 = GPUDevice0.queue
    // GPUComputePassEncoder4.end();
    // const GPUCommandBuffer13 = GPUCommandEncoder9.finish();
    // const string48 = GPUTextureView8.label
    // const string49 = GPUComputePipeline17.label
    // const string50 = GPUQuerySet1.label
    // const string51 = GPUBuffer10.label
    // const string52 = GPUCommandEncoder6.label
    // GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer17);
    // const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule5,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "add",
    //                     dstFactor: "dst",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "bgra8unorm-srgb",
    //             writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline9",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "ccw",
    //         topology: "line-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule3
    //     }
    // });
    // GPUBuffer14.unmap();
    // const boolean5 = GPUAdapter2.isFallbackAdapter
    // const GPUSupportedLimits7 = GPUAdapter1.limits
    // GPURenderPassEncoder8.setPipeline(GPURenderPipeline8);
    // const string53 = GPUQueue10.label
    // const GPUAdapterInfo9 = GPUAdapter1.info
    // const GPUSupportedFeatures15 = GPUDevice1.features
    // const string54 = GPUTextureView8.label
    // const string55 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUBuffer19 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer19",
    //     mappedAtCreation: true,
    //     size: 216471160,
    //     usage: GPUBufferUsage.MAP_READ
    // });
    // await GPUBuffer19.mapAsync(GPUMapMode.READ);
    // const GPUSupportedLimits8 = GPUAdapter0.limits
    // const GPUComputePipeline20 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule8
    //     },
    //     label: "GPUComputePipeline20",
    //     layout: "auto"
    // });
    // const string56 = GPUBuffer1.label
    // const GPUComputePipeline21 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline21",
    //     layout: "auto"
    // });
    // const GPUQueue17 = GPUDevice0.queue
    // GPUQueue17.writeBuffer(GPUBuffer0, 0, typedArray25);
    // const GPUBindGroup13 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline21.bindGroup",
    //     layout: GPUComputePipeline21.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // const GPUShaderModule13 = GPUDevice1.createShaderModule({
    //     label: "fragment",
    //     code: shader13
    // });
    // const GPUBuffer20 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer20",
    //     mappedAtCreation: true,
    //     size: 242672072,
    //     usage: GPUBufferUsage.MAP_READ
    // });
    // await GPUBuffer20.mapAsync(GPUMapMode.READ);
    // const string57 = GPUQuerySet10.label
    // const GPUSupportedFeatures16 = GPUDevice2.features
    // const GPUCommandEncoder21 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder21"
    // });
    // const GPUCommandBuffer14 = GPUCommandEncoder21.finish();
    // GPUQueue13.submit([GPUCommandBuffer14]);
    // const GPUAdapterInfo10 = GPUAdapter1.info
    // const string58 = GPUTextureView15.label
    // const GPUCommandEncoder22 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder22"
    // });
    // const GPUShaderModule14 = GPUDevice0.createShaderModule({
    //     label: "fragment",
    //     code: shader14
    // });
    // const GPUAdapter3 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const GPUDevice3 = await GPUAdapter3.requestDevice();
    // const string59 = GPUTextureView1.label
    // const GPUAdapter4 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUDevice4 = await GPUAdapter4.requestDevice();
    // const string60 = GPUQueue0.label
    // const GPUShaderModule15 = GPUDevice2.createShaderModule({
    //     label: "fragment",
    //     code: shader15
    // });
    // GPURenderPassEncoder7.end();
    // const string61 = GPUBuffer18.label
    // GPURenderPassEncoder8.setPipeline(GPURenderPipeline8);
    // const GPUQueue18 = GPUDevice2.queue
    // const GPUShaderModule16 = GPUDevice3.createShaderModule({
    //     label: "fragment",
    //     code: shader16
    // });
    // const GPUShaderModule17 = GPUDevice3.createShaderModule({
    //     label: "vertex",
    //     code: shader17
    // });
    // const GPURenderPipeline10 = GPUDevice3.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule16,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "add",
    //                     dstFactor: "one-minus-src-alpha",
    //                     srcFactor: "dst-alpha"
    //                 },
    //                 color: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "rgba16float",
    //             writeMask: GPUColorWrite.ALL
    //         }]
    //     },
    //     label: "GPURenderPipeline10",
    //     layout: "auto",
    //     multisample: {
    //         count: 4
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "ccw",
    //         topology: "line-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule17
    //     }
    // });
    // const GPUQueue19 = GPUDevice2.queue
    // const GPUSupportedFeatures17 = GPUDevice0.features
    // const GPUBindGroupLayout4 = GPUComputePipeline3.getBindGroupLayout(0);
    // GPURenderPassEncoder8.end();
    // const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    // const string62 = GPUQuerySet15.label
    // const GPUAdapterInfo11 = GPUAdapter3.info
    // const GPUComputePipeline22 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline22",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline22);
    // const GPUSupportedLimits9 = GPUAdapter3.limits
    // const string63 = GPUComputePipeline19.label
    // const GPUShaderModule18 = GPUDevice4.createShaderModule({
    //     label: "fragment",
    //     code: shader18
    // });
    // const GPUShaderModule19 = GPUDevice4.createShaderModule({
    //     label: "vertex",
    //     code: shader19
    // });
    // const GPURenderPipeline11 = GPUDevice4.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule18,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "dst-alpha",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "bgra8unorm",
    //             writeMask: GPUColorWrite.ALL
    //         }]
    //     },
    //     label: "GPURenderPipeline11",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "cw",
    //         topology: "line-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule19
    //     }
    // });
    // const GPURenderPipeline12 = GPUDevice4.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule18,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one",
    //                     srcFactor: "src"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "zero",
    //                     srcFactor: "one-minus-dst-alpha"
    //                 }
    //             },
    //             format: "rgba16float",
    //             writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
    //         }]
    //     },
    //     label: "GPURenderPipeline12",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "cw",
    //         topology: "line-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule19
    //     }
    // });
    // const string64 = GPUTextureView8.label
    // const GPUComputePipeline23 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline23",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline23);
    // const ArrayBuffer6 = GPUBuffer18.getMappedRange();
    // const GPUBuffer21 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer21",
    //     mappedAtCreation: false,
    //     size: 74037848,
    //     usage: GPUBufferUsage.INDEX
    // });
    // const GPUComputePipeline24 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline24",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline24);
    // const string65 = GPUCommandEncoder18.label
    // const GPUQueue20 = GPUDevice2.queue
    // const string66 = GPURenderPipeline12.label
    // const string67 = GPURenderPipeline0.label
    // const ArrayBuffer7 = GPUBuffer20.getMappedRange();
    // const GPUTexture13 = GPUDevice1.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "bgra8unorm",
    //     label: "GPUTexture13",
    //     size: {
    //         width: 778,
    //         height: 971,
    //         depthOrArrayLayers: 10
    //     },
    //     mipLevelCount: 3,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["bgra8unorm"]
    // });
    // const GPUTextureView16 = GPUTexture13.createView({
    //     aspect: "all",
    //     dimension: "2d-array",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm",
    //     label: "GPUTextureView16"
    // });
    // const GPUQuerySet16 = GPUDevice1.createQuerySet({
    //     count: 3194,
    //     label: "GPUQuerySet16",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder9 = GPUCommandEncoder22.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.4113013217898669,
    //             g: 0.13835502964745994,
    //             b: 0.5121193352427891,
    //             a: 0.46046659158749803
    //         },
    //         loadOp: "clear",
    //         storeOp: "store",
    //         view: GPUTextureView16
    //     }],
    //     label: "GPURenderPassEncoder9",
    //     maxDrawCount: 1479646231,
    //     occlusionQuerySet: GPUQuerySet16
    // });
    // const GPURenderPipeline13 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule13,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one",
    //                     srcFactor: "one-minus-dst-alpha"
    //                 }
    //             },
    //             format: "bgra8unorm",
    //             writeMask: GPUColorWrite.ALL
    //         }]
    //     },
    //     label: "GPURenderPipeline13",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "ccw",
    //         topology: "triangle-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     }
    // });
    // GPURenderPassEncoder9.setPipeline(GPURenderPipeline13);
    // const GPUTexture14 = GPUDevice2.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "rgba8snorm",
    //     label: "GPUTexture14",
    //     size: {
    //         width: 2752,
    //         height: 2997,
    //         depthOrArrayLayers: 9
    //     },
    //     mipLevelCount: 10,
    //     usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgba8snorm"]
    // });
    // const GPUSupportedLimits10 = GPUDevice4.limits
    // const GPUBuffer22 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer22",
    //     mappedAtCreation: true,
    //     size: 178517412,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    // });
    // const GPUComputePipeline25 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule9
    //     },
    //     label: "GPUComputePipeline25",
    //     layout: "auto"
    // });
    // const GPUQueue21 = GPUDevice2.queue
    // GPUQueue21.writeBuffer(GPUBuffer13, 0, typedArray26);
    // const GPUBindGroup14 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline25.bindGroup",
    //     layout: GPUComputePipeline25.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer13
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer14
    //         }
    //     }]
    // });
    // const string68 = GPURenderPassEncoder9.label
    // const GPUComputePassEncoder9 = GPUCommandEncoder2.beginComputePass({
    //     label: "GPUComputePassEncoder9"
    // });
    // const string69 = GPUCommandEncoder6.label
    // GPUCommandEncoder15.copyBufferToBuffer(GPUBuffer16, 52, GPUBuffer7, 43442848, 8);
    // const string70 = GPUCommandEncoder12.label
    // const GPUTexture15 = GPUDevice1.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgba8unorm-srgb",
    //     label: "GPUTexture15",
    //     size: {
    //         width: 176,
    //         height: 412,
    //         depthOrArrayLayers: 7
    //     },
    //     mipLevelCount: 8,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rgba8unorm-srgb"]
    // });
    // const GPUTextureView17 = GPUTexture15.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 1,
    //     format: "rgba8unorm-srgb",
    //     label: "GPUTextureView17"
    // });
    // const GPUQuerySet17 = GPUDevice1.createQuerySet({
    //     count: 1995,
    //     label: "GPUQuerySet17",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder10 = GPUCommandEncoder12.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.6209996937698486,
    //             g: 0.34332705131177654,
    //             b: 0.13362493924399121,
    //             a: 0.5870296010940929
    //         },
    //         loadOp: "load",
    //         storeOp: "store",
    //         view: GPUTextureView17,
    //         depthSlice: 0
    //     }],
    //     label: "GPURenderPassEncoder10",
    //     maxDrawCount: 3086853384,
    //     occlusionQuerySet: GPUQuerySet17
    // });
    // const GPUAdapterInfo12 = GPUAdapter2.info
    // const GPUBuffer23 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer23",
    //     mappedAtCreation: true,
    //     size: 153147732,
    //     usage: GPUBufferUsage.QUERY_RESOLVE
    // });
    // GPUCommandEncoder13.copyBufferToBuffer(GPUBuffer1, 20, GPUBuffer6, 30380176, 24);
    // const GPUBuffer24 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer24",
    //     mappedAtCreation: true,
    //     size: 112583336,
    //     usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    // });
    // await GPUBuffer24.mapAsync(GPUMapMode.READ);
    // const GPUTextureView18 = GPUTexture0.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm",
    //     label: "GPUTextureView18"
    // });
    // const string71 = GPUComputePassEncoder9.label
    // const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder23"
    // });
    // const GPUCommandBuffer15 = GPUCommandEncoder23.finish();
    // GPUQueue4.submit([GPUCommandBuffer15]);
    // const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule4,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one",
    //                     srcFactor: "one-minus-src-alpha"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "src-alpha",
    //                     srcFactor: "src-alpha"
    //                 }
    //             },
    //             format: "r8unorm",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED
    //         }]
    //     },
    //     label: "GPURenderPipeline14",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "ccw",
    //         topology: "line-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     }
    // });
    // const string72 = GPUCommandEncoder6.label
    // const GPUComputePassEncoder10 = GPUCommandEncoder15.beginComputePass({
    //     label: "GPUComputePassEncoder10"
    // });
    // const string73 = GPUTextureView8.label
    // const GPUComputePipeline26 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline26",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline26);
    // const GPUComputePipeline27 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline27",
    //     layout: "auto"
    // });
    // const GPUQueue22 = GPUDevice0.queue
    // GPUQueue22.writeBuffer(GPUBuffer0, 0, typedArray27);
    // const GPUBindGroup15 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline26.bindGroup",
    //     layout: GPUComputePipeline26.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup15);
    // GPUComputePassEncoder6.dispatchWorkgroups(113, 88, 17);
    // GPUComputePassEncoder2.end();
    // GPUComputePassEncoder8.end();
    // const GPUCommandBuffer16 = GPUCommandEncoder18.finish();
    // const GPUComputePipeline28 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline28",
    //     layout: "auto"
    // });
    // const GPUQueue23 = GPUDevice0.queue
    // GPUQueue23.writeBuffer(GPUBuffer0, 0, typedArray28);
    // const GPUBindGroup16 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline28.bindGroup",
    //     layout: GPUComputePipeline28.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup16);
    // const boolean6 = GPUAdapter1.isFallbackAdapter
    // const string74 = GPUDevice4.label
    // const GPUComputePipeline29 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule8
    //     },
    //     label: "GPUComputePipeline29",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder10.setPipeline(GPUComputePipeline29);
    // const GPURenderPipeline15 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule13,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one-minus-dst-alpha",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "rgba8unorm-srgb",
    //             writeMask: GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline15",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "ccw",
    //         topology: "triangle-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     }
    // });
    // GPURenderPassEncoder10.setPipeline(GPURenderPipeline15);
    // GPURenderPassEncoder10.draw(5);
    // const GPUCommandEncoder24 = GPUDevice2.createCommandEncoder({
    //     label: "GPUCommandEncoder24"
    // });
    // const GPUBuffer25 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer25",
    //     mappedAtCreation: false,
    //     size: 238540016,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX
    // });
    // const string75 = GPUTextureView18.label
    // const GPUAdapterInfo13 = GPUAdapter0.info
    // const string76 = GPUCommandEncoder12.label
    // const GPUAdapter5 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const GPUBuffer26 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer26",
    //     mappedAtCreation: true,
    //     size: 9489920,
    //     usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    // });
    // await GPUBuffer26.mapAsync(GPUMapMode.READ);
    // const string77 = GPUQueue15.label
    // const GPUComputePassEncoder11 = GPUCommandEncoder17.beginComputePass({
    //     label: "GPUComputePassEncoder11"
    // });
    // const GPUCommandEncoder25 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder25"
    // });
    // const GPURenderPipeline16 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule12,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one-minus-src-alpha",
    //                     srcFactor: "src"
    //                 }
    //             },
    //             format: "rgba8unorm-srgb",
    //             writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE
    //         }]
    //     },
    //     label: "GPURenderPipeline16",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "back",
    //         frontFace: "ccw",
    //         topology: "line-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     }
    // });
    // const GPUComputePipeline30 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline30",
    //     layout: "auto"
    // });
    // const GPUQueue24 = GPUDevice0.queue
    // GPUQueue24.writeBuffer(GPUBuffer0, 0, typedArray29);
    // const GPUBindGroup17 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline30.bindGroup",
    //     layout: GPUComputePipeline30.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // const string78 = GPURenderPassEncoder9.label
    // GPUComputePassEncoder10.end();
    // const GPUCommandBuffer17 = GPUCommandEncoder15.finish();
    // const GPUBuffer27 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer27",
    //     mappedAtCreation: false,
    //     size: 34974632,
    //     usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    // });
    // const string79 = GPUQuerySet13.label
    // const GPUSupportedFeatures18 = GPUAdapter1.features
    // const GPUBuffer28 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer28",
    //     mappedAtCreation: true,
    //     size: 204887972,
    //     usage: GPUBufferUsage.MAP_READ
    // });
    // await GPUBuffer28.mapAsync(GPUMapMode.READ);
    // const GPUShaderModule20 = GPUDevice2.createShaderModule({
    //     label: "fragment",
    //     code: shader20
    // });
    // const string80 = GPUQueue9.label
    // const string81 = GPUQuerySet7.label
    // const GPUShaderModule21 = GPUDevice4.createShaderModule({
    //     label: "compute",
    //     code: shader21
    // });
    // const GPUComputePipeline31 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule21
    //     },
    //     label: "GPUComputePipeline31",
    //     layout: "auto"
    // });
    // const GPUBuffer29 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer29",
    //     mappedAtCreation: false,
    //     size: 48,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC
    // });
    // const GPUBuffer30 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer30",
    //     mappedAtCreation: false,
    //     size: 32,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE
    // });
    // const GPUQueue25 = GPUDevice4.queue
    // GPUQueue25.writeBuffer(GPUBuffer29, 0, typedArray30);
    // const GPUBindGroup18 = GPUDevice4.createBindGroup({
    //     label: "GPUComputePipeline31.bindGroup",
    //     layout: GPUComputePipeline31.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer29
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer30
    //         }
    //     }]
    // });
    // const GPUCommandEncoder26 = GPUDevice2.createCommandEncoder({
    //     label: "GPUCommandEncoder26"
    // });
    // const GPUCommandEncoder27 = GPUDevice4.createCommandEncoder({
    //     label: "GPUCommandEncoder27"
    // });
    // GPURenderPassEncoder10.setVertexBuffer(0, GPUBuffer8);
    // const string82 = await navigator.gpu.getPreferredCanvasFormat();
    // const string83 = GPUDevice3.label
    // const GPUBuffer31 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer31",
    //     mappedAtCreation: true,
    //     size: 183661904,
    //     usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    // });
    // GPUQueue24.writeBuffer(GPUBuffer0, 0, typedArray31);
    // const GPUSupportedFeatures19 = GPUDevice3.features
    // const GPUSupportedFeatures20 = GPUAdapter5.features
    // const string84 = GPUBuffer13.label
    // const GPUTextureView19 = GPUTexture1.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 2,
    //     baseMipLevel: 2,
    //     format: "rgba8uint",
    //     label: "GPUTextureView19"
    // });
    // const string85 = GPUComputePipeline28.label
    // const GPUCommandEncoder28 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder28"
    // });
    // GPURenderPassEncoder9.setPipeline(GPURenderPipeline13);
    // GPUComputePassEncoder11.end();
    // GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer10);
    // const GPUComputePipeline32 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline32",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup15);
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline32);
    // const GPUBindGroupLayout5 = GPUComputePipeline16.getBindGroupLayout(0);
    // const string86 = GPUBuffer17.label
    // const GPUAdapterInfo14 = GPUAdapter2.info
    // GPURenderPassEncoder9.end();
    // const GPUCommandBuffer18 = GPUCommandEncoder22.finish();
    // const string87 = GPUQuerySet13.label
    // const GPUQuerySet18 = GPUDevice4.createQuerySet({
    //     count: 2604,
    //     label: "GPUQuerySet18",
    //     type: "occlusion"
    // });
    // const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    // const string88 = await navigator.gpu.getPreferredCanvasFormat();
    // GPUBuffer15.unmap();
    // const string89 = GPUBuffer25.label
    // const GPUSupportedLimits11 = GPUAdapter5.limits
    // const string90 = GPUTextureView7.label
    // const ArrayBuffer8 = GPUBuffer26.getMappedRange();
    // const GPUTexture16 = GPUDevice0.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "rgba8unorm-srgb",
    //     label: "GPUTexture16",
    //     size: {
    //         width: 2431,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgba8unorm"]
    // });
    // const GPUBindGroupLayout6 = GPUComputePipeline7.getBindGroupLayout(0);
    // const GPUComputePipeline33 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline33",
    //     layout: "auto"
    // });
    // const GPUComputePipeline34 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline34",
    //     layout: "auto"
    // });
    // const GPUQueue26 = GPUDevice0.queue
    // GPUQueue26.writeBuffer(GPUBuffer0, 0, typedArray32);
    // const GPUBindGroup19 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline32.bindGroup",
    //     layout: GPUComputePipeline32.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup19);
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline33);
    // const string91 = GPURenderPipeline11.label
    // const GPUCommandEncoder29 = GPUDevice3.createCommandEncoder({
    //     label: "GPUCommandEncoder29"
    // });
    // const GPUComputePipeline35 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline35",
    //     layout: "auto"
    // });
    // const GPUComputePipeline36 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline36",
    //     layout: "auto"
    // });
    // const GPUQueue27 = GPUDevice0.queue
    // GPUQueue27.writeBuffer(GPUBuffer0, 0, typedArray33);
    // const GPUBindGroup20 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline36.bindGroup",
    //     layout: GPUComputePipeline36.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup20);
    // GPUComputePassEncoder9.setPipeline(GPUComputePipeline35);
    // const GPUComputePipeline37 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline37",
    //     layout: "auto"
    // });
    // const GPUQueue28 = GPUDevice0.queue
    // GPUQueue28.writeBuffer(GPUBuffer0, 0, typedArray34);
    // const GPUBindGroup21 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline35.bindGroup",
    //     layout: GPUComputePipeline35.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup21);
    // GPUComputePassEncoder9.dispatchWorkgroups(70, 88, 39);
    // const GPUTexture17 = GPUDevice4.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "bgra8unorm",
    //     label: "GPUTexture17",
    //     size: {
    //         width: 272,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_DST,
    //     viewFormats: ["bgra8unorm-srgb"]
    // });
    // const GPUCommandEncoder30 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder30"
    // });
    // const GPUCommandEncoder31 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder31"
    // });
    // const string92 = GPUCommandEncoder24.label
    // const GPUAdapter6 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const boolean7 = GPUAdapter4.isFallbackAdapter
    // const GPUSupportedLimits12 = GPUDevice3.limits
    // const GPUBindGroupLayout7 = GPUComputePipeline4.getBindGroupLayout(0);
    // const string93 = GPUBuffer14.label
    // const string94 = GPUComputePassEncoder9.label
    // GPURenderPassEncoder10.end();
    // const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    // const GPUCommandEncoder32 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder32"
    // });
    // const GPUCommandBuffer19 = GPUCommandEncoder32.finish();
    // GPUQueue16.submit([GPUCommandBuffer19]);
    // const string95 = GPUBuffer16.label
    // const GPUComputePipeline38 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule21
    //     },
    //     label: "GPUComputePipeline38",
    //     layout: "auto"
    // });
    // const GPUBindGroupLayout8 = GPUComputePipeline6.getBindGroupLayout(0);
    // const GPUComputePassEncoder12 = GPUCommandEncoder29.beginComputePass({
    //     label: "GPUComputePassEncoder12"
    // });
    // const GPUCommandEncoder33 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder33"
    // });
    // const GPUCommandBuffer20 = GPUCommandEncoder33.finish();
    // GPUQueue1.submit([GPUCommandBuffer20]);
    // const GPUSupportedFeatures21 = GPUDevice0.features
    // GPUComputePassEncoder12.end();
    // const GPUTexture18 = GPUDevice0.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rg8sint",
    //     label: "GPUTexture18",
    //     size: {
    //         width: 325,
    //         height: 857,
    //         depthOrArrayLayers: 22
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rg8sint"]
    // });
    // const GPUTexture19 = GPUDevice1.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgba16float",
    //     label: "GPUTexture19",
    //     size: {
    //         width: 12,
    //         height: 872,
    //         depthOrArrayLayers: 6
    //     },
    //     mipLevelCount: 2,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgba16float"]
    // });
    // const GPUTextureView20 = GPUTexture19.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgba16float",
    //     label: "GPUTextureView20"
    // });
    // const GPUQuerySet19 = GPUDevice1.createQuerySet({
    //     count: 3556,
    //     label: "GPUQuerySet19",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder11 = GPUCommandEncoder17.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.5659968827902095,
    //             g: 0.7869643517940672,
    //             b: 0.5404720323984543,
    //             a: 0.7380393345728092
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView20,
    //         depthSlice: 3
    //     }],
    //     label: "GPURenderPassEncoder11",
    //     maxDrawCount: 3178644511,
    //     occlusionQuerySet: GPUQuerySet19
    // });
    // const string96 = GPURenderPassEncoder11.label
    // const GPUBuffer32 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer32",
    //     mappedAtCreation: false,
    //     size: 171134268,
    //     usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST
    // });
    // const GPUCommandEncoder34 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder34"
    // });
    // const GPUCommandBuffer21 = GPUCommandEncoder34.finish();
    // GPUQueue5.submit([GPUCommandBuffer21]);
    // const GPUSupportedLimits13 = GPUAdapter2.limits
    // const GPURenderPipeline17 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule12,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "one-minus-dst",
    //                     srcFactor: "src-alpha"
    //                 }
    //             },
    //             format: "rgba16float",
    //             writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.RED
    //         }]
    //     },
    //     label: "GPURenderPipeline17",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "cw",
    //         topology: "point-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     }
    // });
    // GPURenderPassEncoder11.setPipeline(GPURenderPipeline17);
    // GPUComputePassEncoder6.end();
    // const GPUCommandBuffer22 = GPUCommandEncoder13.finish();
    // const GPUSupportedLimits14 = GPUDevice0.limits
    // GPUQueue12.writeBuffer(GPUBuffer6, 78291924, typedArray35);
    // const GPUBuffer33 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer33",
    //     mappedAtCreation: false,
    //     size: 147132608,
    //     usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
    // });
    // GPUCommandEncoder31.copyBufferToBuffer(GPUBuffer7, 29100332, GPUBuffer11, 55614576, 12290536);
    // const string97 = GPUTextureView7.label
    // const GPUSupportedFeatures22 = GPUDevice2.features
    // const GPUBuffer34 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer34",
    //     mappedAtCreation: true,
    //     size: 191947536,
    //     usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    // });
    // const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    // const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup21);
    // const GPUShaderModule22 = GPUDevice3.createShaderModule({
    //     label: "compute",
    //     code: shader22
    // });
    // const GPUComputePipeline39 = GPUDevice3.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule22
    //     },
    //     label: "GPUComputePipeline39",
    //     layout: "auto"
    // });
    // const GPUBuffer35 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer35",
    //     mappedAtCreation: false,
    //     size: 8,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    // });
    // const GPUBuffer36 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer36",
    //     mappedAtCreation: false,
    //     size: 64,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST
    // });
    // const GPUQueue29 = GPUDevice3.queue
    // GPUQueue29.writeBuffer(GPUBuffer35, 0, typedArray36);
    // const GPUBindGroup22 = GPUDevice3.createBindGroup({
    //     label: "GPUComputePipeline39.bindGroup",
    //     layout: GPUComputePipeline39.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer35
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer36
    //         }
    //     }]
    // });
    // const GPUComputePipeline40 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline40",
    //     layout: "auto"
    // });
    // const GPUCommandEncoder35 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder35"
    // });
    // const GPUCommandBuffer23 = GPUCommandEncoder35.finish();
    // GPUQueue14.submit([GPUCommandBuffer23]);
    // const ArrayBuffer9 = GPUBuffer19.getMappedRange();
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup21);
    // const string98 = GPUQueue21.label
    // const GPUComputePipeline41 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline41",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup21);
    // GPUComputePassEncoder9.setPipeline(GPUComputePipeline41);
    // GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer8);
    // const GPUAdapter7 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const string99 = GPUComputePassEncoder9.label
    // const boolean8 = GPUAdapter1.isFallbackAdapter
    // const string100 = GPURenderPipeline0.label
    // const string101 = await navigator.gpu.getPreferredCanvasFormat();
    // const string102 = GPUTextureView5.label
    // const GPUAdapter8 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUAdapter9 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // GPUQueue8.writeBuffer(GPUBuffer0, 4, typedArray37);
    // GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer10);
    // GPUBuffer7.unmap();
    // const GPUComputePassEncoder13 = GPUCommandEncoder27.beginComputePass({
    //     label: "GPUComputePassEncoder13"
    // });
    // const ArrayBuffer10 = GPUBuffer34.getMappedRange();
    // const string103 = GPUTextureView20.label
    // const GPUQuerySet20 = GPUDevice4.createQuerySet({
    //     count: 1486,
    //     label: "GPUQuerySet20",
    //     type: "occlusion"
    // });
    // const boolean9 = GPUAdapter5.isFallbackAdapter
    // GPUQueue19.writeBuffer(GPUBuffer13, 4, typedArray38);
    // const string104 = GPURenderPassEncoder11.label
    // const boolean10 = GPUAdapter6.isFallbackAdapter
    // const GPUShaderModule23 = GPUDevice0.createShaderModule({
    //     label: "vertex",
    //     code: shader23
    // });
    // const GPUSupportedFeatures23 = GPUDevice4.features
    // const GPUComputePipeline42 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule9
    //     },
    //     label: "GPUComputePipeline42",
    //     layout: "auto"
    // });
    // const GPUBindGroupLayout9 = GPUComputePipeline35.getBindGroupLayout(0);
    // const GPUCommandEncoder36 = GPUDevice4.createCommandEncoder({
    //     label: "GPUCommandEncoder36"
    // });
    // const string105 = GPUCommandEncoder36.label
    // const GPUComputePipeline43 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline43",
    //     layout: "auto"
    // });
    // const GPUQueue30 = GPUDevice0.queue
    // GPUQueue30.writeBuffer(GPUBuffer0, 0, typedArray39);
    // const GPUBindGroup23 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline41.bindGroup",
    //     layout: GPUComputePipeline41.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer0
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer1
    //         }
    //     }]
    // });
    // GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup23);
    // GPUQueue1.writeBuffer(GPUBuffer0, 4, typedArray40);
    // GPUCommandEncoder30.copyBufferToBuffer(GPUBuffer17, 33554576, GPUBuffer0, 4, 0);
    // const string106 = GPUQuerySet11.label
    // const GPUQueue31 = GPUDevice3.queue
    // const GPUAdapter10 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const GPUAdapterInfo15 = GPUAdapter9.info
    // const boolean11 = GPUAdapter1.isFallbackAdapter
    // const string107 = await navigator.gpu.getPreferredCanvasFormat();
    // const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    // const GPUShaderModule24 = GPUDevice2.createShaderModule({
    //     label: "vertex",
    //     code: shader24
    // });
    // const string108 = GPUComputePipeline38.label
    // const GPUBindGroupLayout10 = GPUComputePipeline38.getBindGroupLayout(0);
    // const GPUQuerySet21 = GPUDevice0.createQuerySet({
    //     count: 779,
    //     label: "GPUQuerySet21",
    //     type: "occlusion"
    // });
    // GPURenderPassEncoder11.setPipeline(GPURenderPipeline17);
    // const string109 = GPUQueue12.label
    // GPUComputePassEncoder9.end();
    // const GPUComputePipeline44 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule8
    //     },
    //     label: "GPUComputePipeline44",
    //     layout: "auto"
    // });
    // const GPURenderPipeline18 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule4,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "one-minus-dst",
    //                     srcFactor: "one-minus-dst-alpha"
    //                 }
    //             },
    //             format: "rgba16float",
    //             writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.BLUE
    //         }]
    //     },
    //     label: "GPURenderPipeline18",
    //     layout: "auto",
    //     multisample: {
    //         count: 4
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "ccw",
    //         topology: "line-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule3
    //     }
    // });
    // const string110 = GPUComputePipeline10.label
    // const GPUTexture20 = GPUDevice1.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "r8unorm",
    //     label: "GPUTexture20",
    //     size: {
    //         width: 362,
    //         height: 979,
    //         depthOrArrayLayers: 46
    //     },
    //     mipLevelCount: 3,
    //     usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT,
    //     viewFormats: ["r8unorm"]
    // });
    // const string111 = GPUDevice4.label
    // const GPUCommandEncoder37 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder37"
    // });
    // const GPUCommandBuffer24 = GPUCommandEncoder37.finish();
    // GPUQueue0.submit([GPUCommandBuffer24]);
    // const GPUTextureView21 = GPUTexture17.createView({
    //     aspect: "all",
    //     dimension: "1d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm-srgb",
    //     label: "GPUTextureView21"
    // });
    // const GPUSupportedLimits15 = GPUDevice0.limits
    // const GPUSupportedFeatures24 = GPUDevice4.features
    // const GPUSupportedLimits16 = GPUDevice2.limits
    // const GPUComputePipeline45 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule21
    //     },
    //     label: "GPUComputePipeline45",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder13.setPipeline(GPUComputePipeline45);
    // const string112 = GPUQueue10.label
    // const string113 = GPUDevice0.label
    // const GPUSupportedFeatures25 = GPUDevice3.features
    // GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer17, 25863104, GPUBuffer0, 0, 4);
    // const GPUBindGroupLayout11 = GPUComputePipeline11.getBindGroupLayout(0);
    // const GPURenderPipeline19 = GPUDevice4.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule18,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "src-alpha",
    //                     srcFactor: "dst-alpha"
    //                 }
    //             },
    //             format: "rgb10a2unorm",
    //             writeMask: GPUColorWrite.GREEN
    //         }]
    //     },
    //     label: "GPURenderPipeline19",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "ccw",
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule19
    //     }
    // });
    // const string114 = GPUComputePipeline11.label
    // const GPUShaderModule25 = GPUDevice2.createShaderModule({
    //     label: "vertex",
    //     code: shader25
    // });
    // const GPUComputePipeline46 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule21
    //     },
    //     label: "GPUComputePipeline46",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder13.setPipeline(GPUComputePipeline46);
    // const GPUComputePipeline47 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule21
    //     },
    //     label: "GPUComputePipeline47",
    //     layout: "auto"
    // });
    // const GPUQueue32 = GPUDevice4.queue
    // GPUQueue32.writeBuffer(GPUBuffer29, 0, typedArray41);
    // const GPUBindGroup24 = GPUDevice4.createBindGroup({
    //     label: "GPUComputePipeline46.bindGroup",
    //     layout: GPUComputePipeline46.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer29
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer30
    //         }
    //     }]
    // });
    // GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup24);
    // GPUComputePassEncoder13.dispatchWorkgroups(88, 166, 50);
    // const string115 = GPUQueue19.label
    // const string116 = GPUTextureView19.label
    // const string117 = GPUCommandEncoder25.label
    // const boolean12 = GPUAdapter7.isFallbackAdapter

}
main().catch(console.error);