const {
    create,
    globals
} = require('/home/matthew/final_project/dawn/out/Debug/dawn.node');
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
const shader19 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray35 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader18 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray34 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray33 = new Int8Array([7488, 4759, -3994, 6670, -6830, -843, 6339, 7823, -21, -7222, 6175, -9756, -6136, -5537, -1229, 5034, 2197, -5395, 162, -1821, -5967, 9444, 9579, 1640, -7818, -7156, -163, 8719, -896, -5743, -7374, -6250, 607, 2978, -2727, 4477, -373, -3372, 2816, -7045, -4554, -672, -5129, 1917, -232, -1784, 2636, 3991, -7894, -6074, 1443, -7375, -669, 6991, -1981, -5703, -2718, -4184, 3726, 9860, -8210, -9252, 7947, 9677, -4649, -2809, 7990, 8892, -5662, 4593, -3092, -6846, -3254, -8581, -5586, 285, 9466, 2647, -4709, 8819, -8547, -6532, 1806, -2393, 894, -9355, -6561, 6308, 5613, 9674, -7784, 7303, 2698, 2412, -788, 7555, 999, -9264, -843, 6534, 6043, 2252, -24, 6492, 1744, 9041, 5070, -1448, 6772, -7089, -4363, -863, 5569, 970, -3096, 3746, 6334, 5066, 7159, 4856, 4152, -7556, -4093, 5843, 8964, -778, -8204, 9425, -526, 893, 5821, -3932, 9564, 6377, 8301, 9790, -7897, -9882, -5651, 8510, 5989, 4144, -3277, -7576, -5506, 9579, -3344, -110, -4657, 9451, -990, 8175, -7578, -4277, 2403, -5060, -368, 265, -7226, 9993, -7170, 4925, -9277, -8182, -2868, 60, -3855, 2390, -4733, -2518, 3097, -1729, -3140, 1794, -1309, 7851, 5276, 6470, 6221, -6035, 355, -7707, 9802, -5042, 9246, 4526, 9705, -7631, 614, -9135, 9517, 3641, 3069, 3077, -7691, 9926, -7496, -8206, -808, -1410, 3380, 8539, -5962, 1095, -6362, 9666, -9361, -8950, -282, -4943, -6000, 1355, -3168, 8427, -6660, -6516, -1357, 226, 8443, -2560, 6875, 3563, -8491, -9615, 3137, -1683, -3139, -8781, 4815, -6551, 7653, 3863, -3199, 2325, -5854, -3564, -4524, -7614, -9985, -7848, 2515, 2669, 2732, 5697, 3430, -1414, 8252, 7896, -8616, -7630, 1077, 4727, -3922, 395, -5298, -9658, 9565, -8351, -1287, 2911, 2889, 3917, -5591, 9982, -7995, -1871, -5658, -6745, -7680, 1855, 8604, 4747, -1662, 8320, 4347, 2103, -8210, -2225, 6567, -6966, 9405, 7519, 8544, 8748, 9471, -7016, -4409, -534, 9533, 9038, -6575, -6722, 1858, -7402, 4459, -8872, 9430, 2640, -230, -7927, 4453, 5570, 9530, 439, 5570, -9170, -4874, 1633, 7595, 2424, 6299, -6128, -646, -8370, -6127, 9156, 255, 9978, 6434, 2162, 7256, -740, -3281, -3667, 3714, 4840, 5438, -7130, 113, -3902, 655, -2351, -7341, -3399, -4023, 622, 395, 3095, 7190, -5536, -5252, -1557, -9456, -1385, 640, 3418, 3482, -4273, -5677, 8801, -1191, 3315, 9915, -808, 3343, 9485, 9243, -2573, -4276, 9564, 9040, 9789, 2574, 5758, 9481, -1063, -3959, -5942, -1533, -9119, 5385, 362, -6389, -7735, -9418, -4999, -179, -4796, -6194, 3615, 3605, 9646, 3650, 1845, 4062, 9081, 1003, 2573, 2501, 8131, -4983, 3445, 8427, 7167, 3822, -4530, 4809, -7850, -9550, 8899, 6000, 2432, 2846, 642, 963, 2778, 8056, -8562, 4605, 4281, 5856, 2361, 1529, -7609, 7999, 2283, -6095, -2425, -9723, -5207, -7282, 3227, 5980, 7055, 4935, 1450, 1961, -2142, 6532, 264, -4973, -653, -4122, -4857, 3345, 3480, 6339, -514, 4863, -7032, 9314, -5439, -2347, -4824, 5060, 854, -1530, 8332, 304, -1848, 1909, 9029, -7080, 8817, -246, -8939, 1004, 1960, -7427, -3279, -3559, -2836, -7457, -4409, -756, -9261, -2807, -9296, -9436, -5387, -7860, 6714, -2841, 1293, -9363, 9180])
const typedArray32 = new Uint8Array([-505, -7363, 9601, -5960])
const typedArray31 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader17 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray30 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader16 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader15 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray29 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray28 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray27 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray26 = new Int8Array([-8232, -9744, 1188, -9920, 13, -9985, -9945, -6777, 3942, -3322, 9652, -9089, -5820, -9718, -4010, -3678, -3290, 5065, -296, 1654, -5902, -7580, -916, 527, -8882, -6364, -7258, 9340, -5717, 8069, 1058, 525, -2522, -4919, -5187, 2842, -500, -2690, 4498, -662, 2814, 4829, -8176, -4816, 2826, 1928, -8984, 5350, 3188, 687, -7197, -5628, 7650, 893, -3689, -9165, -3833, 1541, -9441, 2780, -2437, 5632, -6045, -9114, 9868, 387, 8172, -8214, 5770, -9024, -498, -3927, -473, 969, -2317, 467, 2121, 8569, 4461, -6441, -8909, 8953, -7513, -6758, -9503, 3672, -8029, -836, 5859, 3538, -3706, -5749, 4554, 405, 451, -544, 1712, 8824, 4078, 1701, 1626, -4422, 9574, 1290, 530, 4852, -5644, -9478, 9869, 7281, -5228, -3879, 9589, -5893, -4444, 9525, 2911, -1688, 1023, -1889, -8183, 854, 1739, -6518, -4762, 6580, -801, -3074, 5397, 3612, 9128, -1442, 6073, -8576, -8371, -8887, -720, 7917, 4601, -648, 283, 3029, -8185, -3785, 6594, -2649, -8677, 1615, -872, -1981, -4806, 2454, -3988, 2728, -7088, -24, 5100, 2681, -2252, -7651, -8549, -753, 6179, 2380, 2380, 5411, 6740, 823, 617, -7244, 2837, 8355, 1659, -9910, -8305, -6162, -4754, 238, -791, 2237, 8806, -7450, -5297, -259, -205, -1329, 1179, 2238, 806, 6415, 5917, -4778, -9176, 2416, -6724, -5970, -1564, 3094, 9222, 2547, 6017, 5782, 1289, 9670, -7670, 5600, -6239, 890, 279, 1434, 6623, 9663])
const typedArray25 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader14 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader13 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray24 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray23 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray22 = new Float32Array([8257, -1176, -8943])
const typedArray21 = new Int8Array([6405, 4625, 7289, -5122, 2319, -2406, 564, 725])
const typedArray20 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader12 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray19 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray18 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray17 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray16 = new Float32Array([9958, -7283, -2956, -7789, 6037, -8997, 2845, -6562, -1373, -937, -939, 7411, 9227, -7562, -8705, -131, 3724])
const typedArray15 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader11 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray14 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray13 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray12 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray11 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader10 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader9 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray10 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader8 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader7 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray9 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray8 = new Float32Array([-3997])
const typedArray7 = new Float32Array([-579])
const shader6 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
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
    GPUCommandEncoder9.copyBufferToBuffer(GPUBuffer10, 94772976, GPUBuffer10, 13232216, 2153424);
    const GPUDevice3 = await GPUAdapter2.requestDevice();
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUCommandBuffer5 = GPUCommandEncoder10.finish();
    GPUQueue2.submit([GPUCommandBuffer5]);
    const string26 = GPUDevice3.label
    GPUComputePassEncoder4.end();
    const GPUCommandBuffer6 = GPUCommandEncoder2.finish();
    const GPUDevice4 = await GPUAdapter4.requestDevice();
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQueue8 = GPUDevice1.queue
    const GPUBuffer11 = GPUDevice2.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 110477636,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer11.mapAsync(GPUMapMode.READ);
    const GPUShaderModule6 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader6
    });
    const GPUComputePipeline13 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    GPURenderPassEncoder3.end();
    const string27 = GPUTextureView7.label
    const string28 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePassEncoder5 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPURenderPipeline5 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline5",
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
            module: GPUShaderModule5
        }
    });
    const GPUTexture7 = GPUDevice4.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture7",
        size: {
            width: 2929,
            height: 3572,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline6",
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
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    GPURenderPassEncoder4.draw(5);
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    const boolean2 = GPUAdapter3.isFallbackAdapter
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray7);
    const string29 = GPUComputePassEncoder3.label
    const GPUSupportedLimits2 = GPUAdapter3.limits
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUCommandBuffer7 = GPUCommandEncoder11.finish();
    GPUQueue3.submit([GPUCommandBuffer7]);
    const string30 = GPUQuerySet0.label
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const GPUSupportedFeatures6 = GPUDevice0.features
    const GPUComputePipeline14 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline14);
    const GPUCommandEncoder13 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline15);
    const GPUComputePipeline16 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    const GPUQueue9 = GPUDevice0.queue
    GPUQueue9.writeBuffer(GPUBuffer0, 0, typedArray9);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline15.bindGroup",
        layout: GPUComputePipeline15.getBindGroupLayout(0),
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder3.dispatchWorkgroups(182, 31, 20);
    const string31 = GPUComputePassEncoder5.label
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    const boolean3 = GPUAdapter4.isFallbackAdapter
    GPURenderPassEncoder4.draw(1);
    const string32 = GPURenderPipeline6.label
    const string33 = GPUQuerySet1.label
    const string34 = GPURenderPassEncoder4.label
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUCommandBuffer8 = GPUCommandEncoder14.finish();
    GPUQueue1.submit([GPUCommandBuffer8]);
    const GPUQueue10 = GPUDevice1.queue
    const GPUShaderModule7 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader7
    });
    const GPUBuffer12 = GPUDevice4.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 196737444,
        usage: GPUBufferUsage.COPY_DST
    });
    const string35 = GPURenderPipeline3.label
    GPUComputePassEncoder5.end();
    const GPUCommandBuffer9 = GPUCommandEncoder9.finish();
    const GPUBuffer13 = GPUDevice4.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: true,
        size: 115724852,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUAdapterInfo2 = GPUAdapter2.info
    GPUBuffer9.unmap();
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 1786,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const string36 = GPUTextureView1.label
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer8, 8, GPUBuffer7, 4, 16);
    const string37 = GPUComputePipeline1.label
    const GPUBuffer14 = GPUDevice0.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: true,
        size: 154490748,
        usage: GPUBufferUsage.COPY_SRC
    });
    const GPUComputePipeline17 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    const string38 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedLimits3 = GPUAdapter3.limits
    const GPUSupportedLimits4 = GPUDevice0.limits
    const string39 = GPUComputePipeline6.label
    const GPUBindGroupLayout2 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUComputePassEncoder6 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUQueue11 = GPUDevice4.queue
    const GPUShaderModule8 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader8
    });
    const string40 = GPURenderPipeline4.label
    const GPUBuffer15 = GPUDevice4.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: false,
        size: 148774208,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer15.mapAsync(GPUMapMode.READ);
    const ArrayBuffer2 = GPUBuffer15.getMappedRange();
    const GPUComputePipeline18 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline18",
        layout: "auto"
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline18);
    const GPUComputePipeline19 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline19",
        layout: "auto"
    });
    const GPUQueue12 = GPUDevice0.queue
    GPUQueue12.writeBuffer(GPUBuffer0, 0, typedArray10);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline18.bindGroup",
        layout: GPUComputePipeline18.getBindGroupLayout(0),
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
    GPUComputePassEncoder3.dispatchWorkgroups(12, 240, 6);
    const GPUSupportedLimits5 = GPUDevice3.limits
    const string41 = GPUQuerySet7.label
    const string42 = GPUComputePassEncoder3.label
    const GPUBindGroupLayout3 = GPUComputePipeline11.getBindGroupLayout(0);
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder15.finish();
    GPUQueue6.submit([GPUCommandBuffer10]);
    const GPUShaderModule9 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const GPUShaderModule10 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader10
    });
    const GPURenderPipeline7 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "dst"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule10
        }
    });
    const string43 = GPURenderPipeline1.label
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string44 = GPUComputePipeline14.label
    const string45 = GPUQuerySet6.label
    const string46 = GPURenderPassEncoder4.label
    const GPUSupportedFeatures7 = GPUDevice2.features
    const GPUSupportedLimits6 = GPUDevice4.limits
    const string47 = GPUComputePipeline15.label
    const GPUTextureView9 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView9"
    });
    const string48 = GPUCommandEncoder13.label
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    const string49 = GPUBuffer3.label
    const string50 = GPUComputePassEncoder6.label
    GPUBuffer5.unmap();
    const GPUBuffer16 = GPUDevice1.createBuffer({
        label: "GPUBuffer16",
        mappedAtCreation: false,
        size: 202932912,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer16.mapAsync(GPUMapMode.READ);
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    const string51 = GPUBuffer1.label
    const GPUBindGroupLayout4 = GPUComputePipeline16.getBindGroupLayout(0);
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUCommandBuffer11 = GPUCommandEncoder16.finish();
    GPUQueue12.submit([GPUCommandBuffer11]);
    const GPUComputePipeline20 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline20",
        layout: "auto"
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline20);
    const GPUComputePipeline21 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline21",
        layout: "auto"
    });
    const GPUQueue13 = GPUDevice0.queue
    GPUQueue13.writeBuffer(GPUBuffer0, 0, typedArray11);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder6.dispatchWorkgroups(222, 191, 9);
    const string52 = GPUDevice4.label
    const GPUComputePipeline22 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline22",
        layout: "auto"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup8);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline22);
    const GPUCommandEncoder17 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const string53 = GPUBuffer3.label
    const string54 = GPUComputePipeline3.label
    const string55 = GPUCommandEncoder17.label
    const string56 = GPUDevice3.label
    const GPUAdapterInfo3 = GPUAdapter0.info
    const string57 = GPUBuffer1.label
    const string58 = GPURenderPipeline3.label
    const string59 = GPURenderPipeline0.label
    const GPUCommandEncoder18 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUCommandBuffer12 = GPUCommandEncoder18.finish();
    GPUQueue8.submit([GPUCommandBuffer12]);
    const GPUSupportedFeatures8 = GPUAdapter2.features
    const GPUBuffer17 = GPUDevice3.createBuffer({
        label: "GPUBuffer17",
        mappedAtCreation: false,
        size: 173659336,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer17.mapAsync(GPUMapMode.READ);
    const ArrayBuffer3 = GPUBuffer17.getMappedRange();
    const GPUSupportedLimits7 = GPUAdapter1.limits
    GPUComputePassEncoder3.end();
    const GPUBuffer18 = GPUDevice0.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC
    });
    GPUCommandEncoder3.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer18, 0, 64);
    const GPUSupportedFeatures9 = GPUDevice2.features
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer8, 12, GPUBuffer7, 20, 8);
    const string60 = GPUComputePassEncoder6.label
    const GPUBuffer19 = GPUDevice4.createBuffer({
        label: "GPUBuffer19",
        mappedAtCreation: false,
        size: 184402572,
        usage: GPUBufferUsage.UNIFORM
    });
    const GPUCommandBuffer13 = GPUCommandEncoder17.finish();
    const GPUCommandEncoder19 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUComputePipeline23 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline23",
        layout: "auto"
    });
    const GPUQueue14 = GPUDevice0.queue
    GPUQueue14.writeBuffer(GPUBuffer0, 0, typedArray12);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline22.bindGroup",
        layout: GPUComputePipeline22.getBindGroupLayout(0),
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder6.end();
    const GPUBuffer20 = GPUDevice0.createBuffer({
        label: "GPUBuffer20",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX
    });
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer20, 0, 64);
    const string61 = await navigator.gpu.getPreferredCanvasFormat();
    const string62 = GPUQueue7.label
    const string63 = GPUComputePipeline17.label
    const GPUSupportedLimits8 = GPUDevice4.limits
    const GPUComputePassEncoder7 = GPUCommandEncoder19.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    GPUComputePassEncoder7.end();
    const GPUComputePassEncoder8 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUComputePipeline24 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline24",
        layout: "auto"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline24);
    const GPUComputePipeline25 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline25",
        layout: "auto"
    });
    const GPUQueue15 = GPUDevice0.queue
    GPUQueue15.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline24.bindGroup",
        layout: GPUComputePipeline24.getBindGroupLayout(0),
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder8.dispatchWorkgroups(49, 138, 20);
    const GPUAdapterInfo4 = GPUAdapter4.info
    const boolean4 = GPUAdapter5.isFallbackAdapter
    const GPUQuerySet10 = GPUDevice2.createQuerySet({
        count: 3930,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUCommandBuffer14 = GPUCommandEncoder12.finish();
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup10);
    const GPUQueue16 = GPUDevice3.queue
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup10);
    const string64 = GPUBuffer16.label
    const GPUCommandBuffer15 = GPUCommandEncoder6.finish();
    const GPUComputePipeline26 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline26",
        layout: "auto"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup10);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline26);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits9 = GPUAdapter0.limits
    const string65 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer21 = GPUDevice1.createBuffer({
        label: "GPUBuffer21",
        mappedAtCreation: false,
        size: 1409948,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE
    });
    const string66 = GPUDevice1.label
    const GPUCommandBuffer16 = GPUCommandEncoder19.finish();
    const string67 = GPUTextureView3.label
    const GPUBuffer22 = GPUDevice2.createBuffer({
        label: "GPUBuffer22",
        mappedAtCreation: true,
        size: 172580668,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer4 = GPUBuffer22.getMappedRange();
    const GPUCommandEncoder20 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUSupportedLimits10 = GPUDevice4.limits
    const GPUCommandEncoder21 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUCommandBuffer17 = GPUCommandEncoder21.finish();
    GPUQueue16.submit([GPUCommandBuffer17]);
    GPUBuffer13.unmap();
    const GPUCommandBuffer18 = GPUCommandEncoder13.finish();
    const string68 = GPUQuerySet3.label
    GPUBuffer21.unmap();
    const string69 = GPUQuerySet6.label
    const string70 = await navigator.gpu.getPreferredCanvasFormat();
    const string71 = GPUComputePassEncoder8.label
    const GPUBuffer23 = GPUDevice3.createBuffer({
        label: "GPUBuffer23",
        mappedAtCreation: true,
        size: 128793732,
        usage: GPUBufferUsage.MAP_READ
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8uint",
        label: "GPUTexture8",
        size: {
            width: 3637,
            height: 4061,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8uint"]
    });
    const GPUComputePipeline27 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline27",
        layout: "auto"
    });
    const GPUQueue17 = GPUDevice0.queue
    GPUQueue17.writeBuffer(GPUBuffer0, 0, typedArray14);
    const GPUBindGroup11 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline26.bindGroup",
        layout: GPUComputePipeline26.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer0
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer18
            }
        }]
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup11);
    const GPUQuerySet11 = GPUDevice3.createQuerySet({
        count: 2879,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBuffer24 = GPUDevice4.createBuffer({
        label: "GPUBuffer24",
        mappedAtCreation: true,
        size: 90653612,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer5 = GPUBuffer24.getMappedRange();
    const GPUSupportedFeatures10 = GPUAdapter5.features
    const string72 = GPUTextureView5.label
    const string73 = GPUDevice2.label
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1302,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const string74 = GPUComputePassEncoder8.label
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    const GPUQueue18 = GPUDevice2.queue
    const string75 = GPUComputePassEncoder8.label
    const GPUShaderModule11 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader11
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer4);
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline6);
    const GPUBindGroupLayout5 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUSupportedLimits11 = GPUDevice4.limits
    const string76 = GPUBuffer14.label
    const string77 = GPURenderPipeline2.label
    const GPUComputePipeline28 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline28",
        layout: "auto"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup11);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline28);
    const GPUComputePipeline29 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline29",
        layout: "auto"
    });
    const GPUQueue19 = GPUDevice0.queue
    GPUQueue19.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup12 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline28.bindGroup",
        layout: GPUComputePipeline28.getBindGroupLayout(0),
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup12);
    GPUComputePassEncoder8.dispatchWorkgroups(176, 2, 13);
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer19 = GPUCommandEncoder7.finish();
    const GPUQueue20 = GPUDevice3.queue
    const string78 = GPUComputePipeline10.label
    const GPUSupportedFeatures11 = GPUAdapter4.features
    const GPUBuffer25 = GPUDevice0.createBuffer({
        label: "GPUBuffer25",
        mappedAtCreation: false,
        size: 120503680,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer25.mapAsync(GPUMapMode.READ);
    const GPUComputePassEncoder9 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const GPUTexture9 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16sint",
        label: "GPUTexture9",
        size: {
            width: 936,
            height: 3472,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16sint"]
    });
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture10",
        size: {
            width: 1020,
            height: 272,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView10 = GPUTexture10.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgba16float",
        label: "GPUTextureView10"
    });
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 425,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8535069927149747,
                g: 0.901064900970681,
                b: 0.1935764574907517,
                a: 0.9903594623210558
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView10,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 2318968787,
        occlusionQuerySet: GPUQuerySet13
    });
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline1);
    const GPUBuffer26 = GPUDevice2.createBuffer({
        label: "GPUBuffer26",
        mappedAtCreation: true,
        size: 63419256,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer6 = GPUBuffer26.getMappedRange();
    const GPUBuffer27 = GPUDevice0.createBuffer({
        label: "GPUBuffer27",
        mappedAtCreation: true,
        size: 227365884,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer7 = GPUBuffer27.getMappedRange();
    const GPUCommandEncoder23 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUTexture11 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture11",
        size: {
            width: 288,
            height: 532,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView11 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "GPUTextureView11"
    });
    const GPUQuerySet14 = GPUDevice1.createQuerySet({
        count: 3528,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder23.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.011051117414756284,
                g: 0.5821364488572346,
                b: 0.9307263624586167,
                a: 0.9602021965190787
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 3052548030,
        occlusionQuerySet: GPUQuerySet14
    });
    const GPURenderPipeline8 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
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
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALL
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder6.draw(10);
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline1);
    GPUComputePassEncoder8.end();
    const GPUBuffer28 = GPUDevice0.createBuffer({
        label: "GPUBuffer28",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.STORAGE
    });
    GPUCommandEncoder3.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer28, 0, 64);
    const GPUCommandBuffer20 = GPUCommandEncoder3.finish();
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline1);
    const GPUBuffer29 = GPUDevice3.createBuffer({
        label: "GPUBuffer29",
        mappedAtCreation: true,
        size: 221145484,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE
    });
    GPUQueue20.writeBuffer(GPUBuffer29, 108779204, typedArray16);
    const GPUTextureView12 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView12"
    });
    const GPUAdapterInfo5 = GPUAdapter4.info
    const GPUTexture12 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8sint",
        label: "GPUTexture12",
        size: {
            width: 220,
            height: 39,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8sint"]
    });
    GPUComputePassEncoder9.end();
    const string79 = GPUQuerySet2.label
    const GPUQuerySet15 = GPUDevice4.createQuerySet({
        count: 1836,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    GPURenderPassEncoder5.end();
    const GPUCommandEncoder24 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUCommandBuffer21 = GPUCommandEncoder24.finish();
    GPUQueue19.submit([GPUCommandBuffer21]);
    const GPUQuerySet16 = GPUDevice0.createQuerySet({
        count: 2440,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    const string80 = await navigator.gpu.getPreferredCanvasFormat();
    const string81 = GPUTextureView0.label
    const GPUBuffer30 = GPUDevice4.createBuffer({
        label: "GPUBuffer30",
        mappedAtCreation: false,
        size: 41438916,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer30.mapAsync(GPUMapMode.READ);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapterInfo6 = GPUAdapter1.info
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePassEncoder10 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const GPUComputePipeline30 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline30",
        layout: "auto"
    });
    const GPUBuffer31 = GPUDevice2.createBuffer({
        label: "GPUBuffer31",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    const GPUBuffer32 = GPUDevice2.createBuffer({
        label: "GPUBuffer32",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const GPUQueue21 = GPUDevice2.queue
    GPUQueue21.writeBuffer(GPUBuffer31, 0, typedArray17);
    const GPUBindGroup13 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline30.bindGroup",
        layout: GPUComputePipeline30.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer31
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer32
            }
        }]
    });
    GPUComputePassEncoder10.setBindGroup(0, GPUBindGroup13);
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture13",
        size: {
            width: 2308,
            height: 2085,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView13 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "bgra8unorm",
        label: "GPUTextureView13"
    });
    const GPUQuerySet17 = GPUDevice0.createQuerySet({
        count: 748,
        label: "GPUQuerySet17",
        type: "occlusion"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder22.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8745513253647359,
                g: 0.24962277614288542,
                b: 0.7930318189528329,
                a: 0.8075521601680296
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 3353071167,
        occlusionQuerySet: GPUQuerySet17
    });
    GPUComputePassEncoder10.end();
    const GPUQuerySet18 = GPUDevice0.createQuerySet({
        count: 2131,
        label: "GPUQuerySet18",
        type: "occlusion"
    });
    const GPUSupportedLimits12 = GPUAdapter8.limits
    const string82 = GPUTextureView8.label
    const GPUQueue22 = GPUDevice3.queue
    const GPUTexture14 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r32float",
        label: "GPUTexture14",
        size: {
            width: 677,
            height: 3828,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32float"]
    });
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
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder6.draw(4);
    const GPUComputePipeline31 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline31",
        layout: "auto"
    });
    const GPUBuffer33 = GPUDevice3.createBuffer({
        label: "GPUBuffer33",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer34 = GPUDevice3.createBuffer({
        label: "GPUBuffer34",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    const GPUQueue23 = GPUDevice3.queue
    GPUQueue23.writeBuffer(GPUBuffer33, 0, typedArray18);
    const GPUBindGroup14 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline31.bindGroup",
        layout: GPUComputePipeline31.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer33
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer34
            }
        }]
    });
    const GPUComputePipeline32 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline32",
        layout: "auto"
    });
    const GPUQueue24 = GPUDevice2.queue
    GPUQueue24.writeBuffer(GPUBuffer31, 0, typedArray19);
    const GPUBindGroup15 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline32.bindGroup",
        layout: GPUComputePipeline32.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer31
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer32
            }
        }]
    });
    GPUBuffer23.unmap();
    const GPUSupportedFeatures12 = GPUDevice1.features
    const GPUCommandEncoder25 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const GPUBuffer35 = GPUDevice3.createBuffer({
        label: "GPUBuffer35",
        mappedAtCreation: true,
        size: 211818128,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    const GPUComputePipeline33 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline33",
        layout: "auto"
    });
    const GPUQueue25 = GPUDevice2.queue
    GPUQueue25.writeBuffer(GPUBuffer31, 0, typedArray20);
    const GPUBindGroup16 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline33.bindGroup",
        layout: GPUComputePipeline33.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer31
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer32
            }
        }]
    });
    const GPUSupportedLimits13 = GPUDevice3.limits
    const GPUSupportedLimits14 = GPUDevice2.limits
    const GPURenderPipeline10 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline10",
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
            module: GPUShaderModule10
        }
    });
    const GPUComputePipeline34 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline34",
        layout: "auto"
    });
    const GPUComputePipeline35 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline35",
        layout: "auto"
    });
    const GPURenderPipeline11 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALL
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule10
        }
    });
    const string83 = GPUDevice2.label
    const string84 = GPUCommandEncoder20.label
    const GPUBuffer36 = GPUDevice1.createBuffer({
        label: "GPUBuffer36",
        mappedAtCreation: true,
        size: 140125528,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer37 = GPUDevice4.createBuffer({
        label: "GPUBuffer37",
        mappedAtCreation: false,
        size: 255033040,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer37.mapAsync(GPUMapMode.READ);
    const ArrayBuffer8 = GPUBuffer37.getMappedRange();
    const GPUComputePassEncoder11 = GPUCommandEncoder25.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const string85 = GPUComputePassEncoder11.label
    const GPUSupportedLimits15 = GPUDevice1.limits
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline8);
    const string86 = GPUComputePassEncoder11.label
    const GPUCommandBuffer22 = GPUCommandEncoder20.finish();
    GPURenderPassEncoder7.end();
    const GPUTextureView14 = GPUTexture2.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 16,
        baseArrayLayer: 7,
        mipLevelCount: 7,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView14"
    });
    GPURenderPassEncoder6.end();
    const GPUCommandEncoder26 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const GPUCommandBuffer23 = GPUCommandEncoder26.finish();
    GPUQueue3.submit([GPUCommandBuffer23]);
    const string87 = GPUComputePassEncoder11.label
    GPUQueue16.writeBuffer(GPUBuffer33, 0, typedArray21);
    const GPUCommandBuffer24 = GPUCommandEncoder22.finish();
    const GPUQuerySet19 = GPUDevice3.createQuerySet({
        count: 2078,
        label: "GPUQuerySet19",
        type: "occlusion"
    });
    const string88 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePassEncoder12 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const string89 = GPUDevice2.label
    const string90 = GPUDevice4.label
    const GPUCommandEncoder27 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder27"
    });
    const GPUTexture15 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture15",
        size: {
            width: 656,
            height: 61,
            depthOrArrayLayers: 25
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView15 = GPUTexture15.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rg16float",
        label: "GPUTextureView15"
    });
    const GPUQuerySet20 = GPUDevice1.createQuerySet({
        count: 510,
        label: "GPUQuerySet20",
        type: "occlusion"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder27.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9851923552605749,
                g: 0.07639994525065974,
                b: 0.9133484735129184,
                a: 0.501871666616016
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView15,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 4286950484,
        occlusionQuerySet: GPUQuerySet20
    });
    const GPURenderPipeline12 = GPUDevice1.createRenderPipeline({
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
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline12);
    GPURenderPassEncoder8.draw(4);
    const GPUBindGroupLayout6 = GPUComputePipeline13.getBindGroupLayout(0);
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline12);
    const string91 = GPUCommandEncoder27.label
    const GPUBuffer38 = GPUDevice4.createBuffer({
        label: "GPUBuffer38",
        mappedAtCreation: true,
        size: 187836688,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer9 = GPUBuffer38.getMappedRange();
    const string92 = GPURenderPassEncoder8.label
    const GPURenderPipeline13 = GPUDevice1.createRenderPipeline({
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule5
        }
    });
    GPURenderPassEncoder8.end();
    GPUQueue21.writeBuffer(GPUBuffer32, 4, typedArray22);
    const GPUQueue26 = GPUDevice1.queue
    const string93 = GPUComputePassEncoder12.label
    const GPUQueue27 = GPUDevice4.queue
    const string94 = GPUComputePassEncoder12.label
    const GPUComputePipeline36 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline36",
        layout: "auto"
    });
    const GPUQueue28 = GPUDevice1.queue
    GPUQueue28.writeBuffer(GPUBuffer7, 0, typedArray23);
    const GPUBindGroup17 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline36.bindGroup",
        layout: GPUComputePipeline36.getBindGroupLayout(0),
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
    const GPUTexture16 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture16",
        size: {
            width: 888,
            height: 586,
            depthOrArrayLayers: 43
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView16 = GPUTexture16.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgb10a2unorm",
        label: "GPUTextureView16"
    });
    const GPUQuerySet21 = GPUDevice1.createQuerySet({
        count: 1883,
        label: "GPUQuerySet21",
        type: "occlusion"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder27.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.48069597154105126,
                g: 0.09329455040315093,
                b: 0.20818532640382892,
                a: 0.23863434262919725
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView16,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 1557461771,
        occlusionQuerySet: GPUQuerySet21
    });
    GPURenderPassEncoder9.end();
    const GPUBuffer39 = GPUDevice4.createBuffer({
        label: "GPUBuffer39",
        mappedAtCreation: true,
        size: 136178868,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer10 = GPUBuffer39.getMappedRange();
    const GPUTextureView17 = GPUTexture1.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 10,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView17"
    });
    const GPUBuffer40 = GPUDevice0.createBuffer({
        label: "GPUBuffer40",
        mappedAtCreation: true,
        size: 99291840,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    });
    const GPUTexture17 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture17",
        size: {
            width: 464,
            height: 2929,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView18 = GPUTexture17.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView18"
    });
    const GPUQuerySet22 = GPUDevice1.createQuerySet({
        count: 2664,
        label: "GPUQuerySet22",
        type: "occlusion"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder27.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9871556322146838,
                g: 0.19720361198839786,
                b: 0.0032482641816182767,
                a: 0.022266435515370775
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 904545594,
        occlusionQuerySet: GPUQuerySet22
    });
    GPURenderPassEncoder10.end();
    const GPUSupportedFeatures13 = GPUAdapter3.features
    const GPUTexture18 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture18",
        size: {
            width: 1904,
            height: 1402,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView19 = GPUTexture18.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView19"
    });
    const GPUQuerySet23 = GPUDevice1.createQuerySet({
        count: 2226,
        label: "GPUQuerySet23",
        type: "occlusion"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder27.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5956573933060026,
                g: 0.8923228239401566,
                b: 0.921646689416297,
                a: 0.09181739194382987
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView19
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3240738958,
        occlusionQuerySet: GPUQuerySet23
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder11.draw(4);
    const GPUCommandEncoder28 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder28"
    });
    const GPUTexture19 = GPUDevice3.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture19",
        size: {
            width: 741,
            height: 3257,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView20 = GPUTexture19.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView20"
    });
    const GPUQuerySet24 = GPUDevice3.createQuerySet({
        count: 1880,
        label: "GPUQuerySet24",
        type: "occlusion"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder28.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7207882750046367,
                g: 0.0821901028316816,
                b: 0.37339041113895566,
                a: 0.12902158879796155
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView20
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 3620635704,
        occlusionQuerySet: GPUQuerySet24
    });
    const GPUComputePipeline37 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline37",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline37);
    const GPUComputePipeline38 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline38",
        layout: "auto"
    });
    const GPUQueue29 = GPUDevice3.queue
    GPUQueue29.writeBuffer(GPUBuffer33, 0, typedArray24);
    const GPUBindGroup18 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline37.bindGroup",
        layout: GPUComputePipeline37.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer33
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer34
            }
        }]
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder11.dispatchWorkgroups(35, 59, 10);
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUCommandEncoder29 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder29"
    });
    GPUCommandEncoder29.copyBufferToBuffer(GPUBuffer8, 28, GPUBuffer7, 44, 0);
    const GPUShaderModule13 = GPUDevice3.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const GPUShaderModule14 = GPUDevice3.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const GPURenderPipeline14 = GPUDevice3.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline14",
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
            module: GPUShaderModule14
        }
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline14);
    const GPUQueue30 = GPUDevice1.queue
    GPUCommandEncoder29.copyBufferToBuffer(GPUBuffer8, 0, GPUBuffer21, 1092796, 8);
    const GPUComputePipeline39 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline39",
        layout: "auto"
    });
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline39);
    const GPUComputePipeline40 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline40",
        layout: "auto"
    });
    const GPUQueue31 = GPUDevice1.queue
    GPUQueue31.writeBuffer(GPUBuffer7, 0, typedArray25);
    const GPUBindGroup19 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline39.bindGroup",
        layout: GPUComputePipeline39.getBindGroupLayout(0),
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder12.dispatchWorkgroups(114, 214, 59);
    const GPUTexture20 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture20",
        size: {
            width: 788,
            height: 969,
            depthOrArrayLayers: 54
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView21 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView21"
    });
    const GPUQuerySet25 = GPUDevice1.createQuerySet({
        count: 3407,
        label: "GPUQuerySet25",
        type: "occlusion"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder29.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4539852645307826,
                g: 0.8242984206805456,
                b: 0.8274293158526781,
                a: 0.9270335595216377
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView21,
            depthSlice: 13
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 1566782408,
        occlusionQuerySet: GPUQuerySet25
    });
    const string95 = GPUTextureView13.label
    const GPUBuffer41 = GPUDevice0.createBuffer({
        label: "GPUBuffer41",
        mappedAtCreation: true,
        size: 5610556,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.INDEX
    });
    const GPUCommandEncoder30 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder30"
    });
    GPUCommandEncoder30.copyBufferToBuffer(GPUBuffer32, 0, GPUBuffer10, 14028480, 20);
    GPUQueue21.writeBuffer(GPUBuffer10, 83498888, typedArray26);
    const GPUCommandEncoder31 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder31"
    });
    const GPUSupportedFeatures14 = GPUDevice0.features
    const string96 = GPUComputePipeline15.label
    const string97 = GPUComputePipeline27.label
    const string98 = GPUComputePassEncoder11.label
    const GPUBindGroupLayout7 = GPUComputePipeline22.getBindGroupLayout(0);
    const boolean5 = GPUAdapter5.isFallbackAdapter
    const string99 = GPUDevice1.label
    const GPUBuffer42 = GPUDevice3.createBuffer({
        label: "GPUBuffer42",
        mappedAtCreation: false,
        size: 212788516,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer42.mapAsync(GPUMapMode.READ);
    const ArrayBuffer11 = GPUBuffer42.getMappedRange();
    const string100 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline14);
    const GPUSupportedFeatures15 = GPUAdapter2.features
    const GPUSupportedLimits16 = GPUAdapter8.limits
    const string101 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandBuffer25 = GPUCommandEncoder30.finish();
    const string102 = GPUTextureView18.label
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string103 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder32 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder32"
    });
    const GPUCommandBuffer26 = GPUCommandEncoder32.finish();
    GPUQueue13.submit([GPUCommandBuffer26]);
    const string104 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline41 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline41",
        layout: "auto"
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder12.setPipeline(GPUComputePipeline41);
    const GPUComputePipeline42 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline42",
        layout: "auto"
    });
    const GPUQueue32 = GPUDevice1.queue
    GPUQueue32.writeBuffer(GPUBuffer7, 0, typedArray27);
    const GPUBindGroup20 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline41.bindGroup",
        layout: GPUComputePipeline41.getBindGroupLayout(0),
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
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup20);
    GPUComputePassEncoder12.dispatchWorkgroups(153, 200, 25);
    const GPUComputePipeline43 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline43",
        layout: "auto"
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline43);
    const string105 = GPUDevice1.label
    const string106 = GPUQueue12.label
    const GPUBuffer43 = GPUDevice2.createBuffer({
        label: "GPUBuffer43",
        mappedAtCreation: false,
        size: 26260920,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer43.mapAsync(GPUMapMode.READ);
    const string107 = GPUDevice2.label
    const GPUBuffer44 = GPUDevice2.createBuffer({
        label: "GPUBuffer44",
        mappedAtCreation: false,
        size: 139626748,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer44.mapAsync(GPUMapMode.READ);
    const string108 = GPUComputePipeline14.label
    const GPUQuerySet26 = GPUDevice1.createQuerySet({
        count: 1367,
        label: "GPUQuerySet26",
        type: "occlusion"
    });
    const GPUBuffer45 = GPUDevice2.createBuffer({
        label: "GPUBuffer45",
        mappedAtCreation: true,
        size: 208371880,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    });
    GPURenderPassEncoder13.end();
    const GPUCommandBuffer27 = GPUCommandEncoder29.finish();
    const string109 = GPUQuerySet12.label
    const GPUBuffer46 = GPUDevice4.createBuffer({
        label: "GPUBuffer46",
        mappedAtCreation: true,
        size: 35410572,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer12 = GPUBuffer46.getMappedRange();
    const GPURenderPipeline15 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline15",
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
            module: GPUShaderModule10
        }
    });
    const GPUComputePipeline44 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline44",
        layout: "auto"
    });
    const GPUComputePipeline45 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline45",
        layout: "auto"
    });
    const GPUQueue33 = GPUDevice3.queue
    GPUQueue33.writeBuffer(GPUBuffer33, 0, typedArray28);
    const GPUBindGroup21 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline43.bindGroup",
        layout: GPUComputePipeline43.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer33
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer34
            }
        }]
    });
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline44);
    const GPUComputePipeline46 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline46",
        layout: "auto"
    });
    const GPUBuffer47 = GPUDevice4.createBuffer({
        label: "GPUBuffer47",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const GPUBuffer48 = GPUDevice4.createBuffer({
        label: "GPUBuffer48",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const GPUQueue34 = GPUDevice4.queue
    GPUQueue34.writeBuffer(GPUBuffer47, 0, typedArray29);
    const GPUBindGroup22 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline46.bindGroup",
        layout: GPUComputePipeline46.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer47
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer48
            }
        }]
    });
    const string110 = GPUQuerySet15.label
    const string111 = GPURenderPipeline9.label
    const GPUCommandEncoder33 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder33"
    });
    const GPUQuerySet27 = GPUDevice4.createQuerySet({
        count: 2018,
        label: "GPUQuerySet27",
        type: "occlusion"
    });
    const string112 = GPUComputePassEncoder11.label
    const GPUComputePipeline47 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline47",
        layout: "auto"
    });
    const string113 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder11.end();
    const GPUCommandBuffer28 = GPUCommandEncoder27.finish();
    const GPUComputePassEncoder13 = GPUCommandEncoder33.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup20);
    const GPUBuffer49 = GPUDevice4.createBuffer({
        label: "GPUBuffer49",
        mappedAtCreation: true,
        size: 106626104,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer13 = GPUBuffer49.getMappedRange();
    const string114 = GPUCommandEncoder31.label
    const GPUBuffer50 = GPUDevice0.createBuffer({
        label: "GPUBuffer50",
        mappedAtCreation: false,
        size: 85867748,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer50.mapAsync(GPUMapMode.READ);
    const GPUTexture21 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture21",
        size: {
            width: 850,
            height: 883,
            depthOrArrayLayers: 46
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView22 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "GPUTextureView22"
    });
    const GPUQuerySet28 = GPUDevice2.createQuerySet({
        count: 4015,
        label: "GPUQuerySet28",
        type: "occlusion"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder31.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8773516805507339,
                g: 0.3701226970567394,
                b: 0.22596716126184568,
                a: 0.23480382859564863
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView22
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 1583098484,
        occlusionQuerySet: GPUQuerySet28
    });
    const GPUSupportedFeatures16 = GPUAdapter10.features
    const GPUQuerySet29 = GPUDevice2.createQuerySet({
        count: 490,
        label: "GPUQuerySet29",
        type: "occlusion"
    });
    const string115 = GPUComputePassEncoder12.label
    const GPUBindGroupLayout8 = GPUComputePipeline18.getBindGroupLayout(0);
    const GPUComputePipeline48 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline48",
        layout: "auto"
    });
    const string116 = GPUBuffer3.label
    const string117 = GPUQuerySet8.label
    const GPUShaderModule15 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader15
    });
    const GPUCommandEncoder34 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder34"
    });
    const GPUCommandBuffer29 = GPUCommandEncoder34.finish();
    GPUQueue23.submit([GPUCommandBuffer29]);
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup20);
    const string118 = GPUDevice3.label
    const GPUCommandEncoder35 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder35"
    });
    const GPUTexture22 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture22",
        size: {
            width: 1020,
            height: 1124,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16float"]
    });
    const GPUTextureView23 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView23"
    });
    const GPUQuerySet30 = GPUDevice1.createQuerySet({
        count: 2395,
        label: "GPUQuerySet30",
        type: "occlusion"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder35.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7381020393123209,
                g: 0.2901346714095364,
                b: 0.7777024340723844,
                a: 0.5295128066948142
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView23
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 1123362953,
        occlusionQuerySet: GPUQuerySet30
    });
    const GPUShaderModule16 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader16
    });
    const GPUCommandEncoder36 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder36"
    });
    const GPUCommandBuffer30 = GPUCommandEncoder36.finish();
    GPUQueue20.submit([GPUCommandBuffer30]);
    const GPUQueue35 = GPUDevice3.queue
    const string119 = GPUComputePassEncoder13.label
    const GPUComputePipeline49 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline49",
        layout: "auto"
    });
    const GPUQueue36 = GPUDevice2.queue
    GPUQueue36.writeBuffer(GPUBuffer31, 0, typedArray30);
    const GPUBindGroup23 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline49.bindGroup",
        layout: GPUComputePipeline49.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer31
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer32
            }
        }]
    });
    const string120 = GPUQueue12.label
    const string121 = GPUBuffer40.label
    const GPUCommandEncoder37 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder37"
    });
    const string122 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder15.end();
    const GPURenderPipeline16 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule16,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline16",
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
            module: GPUShaderModule10
        }
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline16);
    const GPUBuffer51 = GPUDevice3.createBuffer({
        label: "GPUBuffer51",
        mappedAtCreation: true,
        size: 145189736,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const GPUShaderModule17 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader17
    });
    GPUCommandEncoder35.copyBufferToBuffer(GPUBuffer8, 20, GPUBuffer7, 24, 4);
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
    const GPUComputePipeline50 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule6
        },
        label: "GPUComputePipeline50",
        layout: "auto"
    });
    const GPUQueue37 = GPUDevice2.queue
    GPUQueue37.writeBuffer(GPUBuffer31, 0, typedArray31);
    const GPUBindGroup24 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline50.bindGroup",
        layout: GPUComputePipeline50.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer31
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer32
            }
        }]
    });
    const string123 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue38 = GPUDevice2.queue
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray32);
    const GPUTextureView25 = GPUTexture22.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView25"
    });
    GPUQueue14.writeBuffer(GPUBuffer5, 41483988, typedArray33);
    const GPUBindGroupLayout9 = GPUComputePipeline3.getBindGroupLayout(0);
    const GPUComputePipeline51 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule11
        },
        label: "GPUComputePipeline51",
        layout: "auto"
    });
    const GPUComputePipeline52 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline52",
        layout: "auto"
    });
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline52);
    const GPUComputePipeline53 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline53",
        layout: "auto"
    });
    const GPUQueue39 = GPUDevice1.queue
    GPUQueue39.writeBuffer(GPUBuffer7, 0, typedArray34);
    const GPUBindGroup25 = GPUDevice1.createBindGroup({
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
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup25);
    GPUComputePassEncoder13.dispatchWorkgroups(53, 249, 10);
    const GPUShaderModule18 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader18
    });
    const GPUCommandEncoder38 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder38"
    });
    const GPUBuffer52 = GPUDevice0.createBuffer({
        label: "GPUBuffer52",
        mappedAtCreation: false,
        size: 107669556,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer52.mapAsync(GPUMapMode.READ);
    const GPUComputePipeline54 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline54",
        layout: "auto"
    });
    const GPUQueue40 = GPUDevice1.queue
    GPUQueue40.writeBuffer(GPUBuffer7, 0, typedArray35);
    const GPUBindGroup26 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline54.bindGroup",
        layout: GPUComputePipeline54.getBindGroupLayout(0),
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
    const GPUSupportedFeatures17 = GPUDevice4.features
    const GPUComputePassEncoder14 = GPUCommandEncoder38.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer34);
    const GPUQuerySet31 = GPUDevice2.createQuerySet({
        count: 1060,
        label: "GPUQuerySet31",
        type: "occlusion"
    });
    const GPUSupportedFeatures18 = GPUAdapter2.features
    const GPUBindGroupLayout10 = GPUComputePipeline39.getBindGroupLayout(0);
    const GPUTextureView26 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView26"
    });
    const GPUComputePipeline55 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline55",
        layout: "auto"
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup25);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline55);
    const GPUCommandEncoder39 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder39"
    });
    const GPUCommandBuffer31 = GPUCommandEncoder39.finish();
    GPUQueue33.submit([GPUCommandBuffer31]);
    const string124 = GPUQuerySet18.label
    const GPUComputePassEncoder15 = GPUCommandEncoder35.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTextureView27 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView27"
    });
    const boolean6 = GPUAdapter9.isFallbackAdapter
    const GPUCommandEncoder40 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder40"
    });
    const GPUCommandBuffer32 = GPUCommandEncoder40.finish();
    GPUQueue11.submit([GPUCommandBuffer32]);
    const GPUShaderModule19 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader19
    });
    const GPUQuerySet32 = GPUDevice4.createQuerySet({
        count: 2518,
        label: "GPUQuerySet32",
        type: "occlusion"
    });
    const string125 = GPUQueue10.label
    GPURenderPassEncoder14.end();
    const string126 = GPUQueue29.label
    const string127 = GPUQueue33.label
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline14);
    GPURenderPassEncoder12.end();
    const string128 = GPUComputePipeline1.label
    const GPUTexture23 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture23",
        size: {
            width: 556,
            height: 916,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView28 = GPUTexture23.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "GPUTextureView28"
    });
    const GPUQuerySet33 = GPUDevice1.createQuerySet({
        count: 1785,
        label: "GPUQuerySet33",
        type: "occlusion"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder37.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7881324417813313,
                g: 0.5029852380250016,
                b: 0.020380340816644082,
                a: 0.6552125126269774
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView28,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 3456704524,
        occlusionQuerySet: GPUQuerySet33
    });
    GPURenderPassEncoder16.setPipeline(GPURenderPipeline8);
    GPUBuffer35.unmap();

}
main().catch(console.error);