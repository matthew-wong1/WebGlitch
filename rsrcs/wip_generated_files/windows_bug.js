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
const typedArray43 = new Float32Array([9357])
const typedArray42 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray41 = new Uint8Array([-9078, 9693, -1335, -4408, 6616, -773, 2060, 6098, 9934, 4196, 832, -8913, 965, -4022, 4436, 9506, -2694, -6253, 1940, -778, -2899, 9983, -1093, -1008, -339, -2517, -7625, -244, -6684, 2299, 103, 8831, 7892, 1728, -8955, 3318, -8292, -9197, 7480, 5661, -6980, 8961, 3672, -2388, -6043, -2435, 3034, -9287, 2846, -2304, -920, -519, -9119, -2452, 7022, -8926, -3422, 6686, 8729, -5544, 2791, 4760, 6139, -9518, 2842, 1993, 574, 5095, 101, 1623, -5423, 2910, -9028, -7860, 4641, -5840, -1019, 8325, -2857, -7470, -1103, -1795, 9656, 7827, 7741, -3076, -5004, 3377, 9250, -949, -7025, -6056, 7339, 1015, -8397, 4630, 1147, -8984, 5550, 7671, -5383, -2780, -8117, -1917, -9758, 4181, 2432, -6940, 5117, 8913, -3011, -3498, -5604, 8733, 4548, -7927, -3790, -6674, 7744, -1597, -2696, 7562, -9316, 8231, 8014, 4346, -5109, -3744, -1106, 5542, 4892, 2412, -2529, -1173, -5941, -4399, -7327, 1346, -1465, -5927, -8715, -5510, 4585, 7054, -7218, -7566, -9573, -270, 939, -8865, 4921, 9435, 2212, -6178, 3346, -9253, -2411, -5308, 5906, 9493, -6044, 5099, -3546, -1554, -34, -9622, 260, 6471, -9690, -4548, -939, 9361, 7682, -6852, 5857, -270, 3157, 8634, -7302, 4079, -9446, -6190, 944, -1934, 1349, -3509, -2993, -5161, 703, -7510, -9153, -3468, -6775, 190, 6617, 4415, 797, -9651, 4795, 9733, -6693, -6022, 8028, -6245, 5523, -6273, 1298, 4690, -8310, -3866, 7274, 9455, 1923, 8982, -5151, 7428, -4494, 3009, 1311, 5666, 2207, -8866, 531, -6194, -7445, -1432, 1172, 5135, -3109, -6238, -135, 9945, 2801, 1015, -8138, -7340, -5146, -1814, 5137, -3112, 6080, -9668, 3757, 612, -2709, 8709, 1416, -2182, 9159, -4935, 1041, 2644, -730, -6168, 5244, -411, -5722, -5945, -6928, 7328, -2262, 5061, 3154, 7674, 602, 3480, -2297, -6142, -1881, -5461, -9517, 3847, -5797, -3309, 2582, 2450, -3565, 7476, -6450, 8274, 7897, 9447, -5171, 1030, 4479, 715, 9405, 4903, 6249, -2352, -637, -7651, -4016, 7210, -6695, -6546, 5247, -7884, 6634, -8169, -3101, 383, 2051, -6414, -7893, 7797, -3890, 6145, 1696, 4194, -9437, 5655, 2574, 2863, 7292, -3407, 8504, 1273, -3039, 7260, -6647, 4641, 110, 9628, -9655, 4449, -1832, -8035, 7197, 8697, -1611, 3898, -3260, -5101, 6954, 4348, -1718, -8810, -1425, 7041, 6844, 7978, -1819, -8242, -1013, 4710, 8325, -1729, 3990, -9009, 3561, -9748, 3112, 4044, -8841, -9430, -6373, 1272, 2085, 8753])
const typedArray40 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader23 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray39 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray38 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray37 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray36 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray35 = new Float32Array([-1867])
const typedArray34 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray33 = new Uint8Array([-8680, 1805, -7458, 6043])
const shader22 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader21 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader20 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader19 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray32 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader18 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray31 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader17 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray30 = new Uint8Array([-6098, 6466, 9214, 8768])
const typedArray29 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader16 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader15 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader14 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader13 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray28 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray27 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray26 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray25 = new Float32Array([2949])
const typedArray24 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray23 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray22 = new Float32Array([8663])
const shader12 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader11 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader10 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray21 = new Uint8Array([-1271, -8078, 9478, 9080])
const typedArray20 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray19 = new Uint8Array([238, -3972, -6362, 1324])
const typedArray18 = new Uint8Array([-6435, -4338, -126, 1100, -7127, 8771, -5245, -5005, 7590, -4293, -5021, 69, 2649, -2566, 6293, 6356, 9475, -4441, -8113, 1801, -679, 2083, -3368, 1234, -216, -7800, 6883, 2559, 543, -8148, 3675, -5153, 8975, -8926, 964, -6911, -2953, -6600, 5341, 7304, -8976, -5299, 1472, 9794, -4688, 3474, -6699, 2344, -6324, -9509, -7675, 9626, -683, -9676, -7766, 9050, -452, -7096, 8954, -7025, -6118, -9926, 8406, 5016, -5452, -3815, -1709, 2271, -9288, -6913, -5391, -5992, 2470, 3109, -699, 3809, -201, -7885, -6152, -5805, 5104, -2915, 4190, -6815, -5373, 5869, 3577, -7205, -6382, -9268, 8148, -9802])
const shader9 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray17 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
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
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer1, 12, GPUBuffer0, 4, 4);
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
        mappedAtCreation: false,
        size: 9881568,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer2.mapAsync(GPUMapMode.READ);
    const string4 = GPUComputePipeline1.label
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
    const boolean2 = GPUAdapter0.isFallbackAdapter
    const string10 = GPUBuffer2.label
    GPUBuffer2.unmap();
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 1052,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 215206516,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    });
    const ArrayBuffer0 = GPUBuffer3.getMappedRange();
    GPURenderPassEncoder3.end();
    const GPUCommandBuffer3 = GPUCommandEncoder4.finish();
    const string11 = GPUCommandEncoder1.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const string12 = GPUComputePipeline4.label
    GPUQueue3.writeBuffer(GPUBuffer0, 4, typedArray10);
    const string13 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUComputePassEncoder2 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const string14 = GPUComputePassEncoder2.label
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline8);
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUQueue5 = GPUDevice0.queue
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray11);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder2.dispatchWorkgroups(155, 187, 19);
    const GPUTextureView6 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView6"
    });
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    GPUQueue3.submit([GPUCommandBuffer4]);
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string15 = GPUQuerySet6.label
    const string16 = GPUQuerySet3.label
    const GPUTextureView7 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView7"
    });
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.GREEN
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
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const GPUComputePassEncoder4 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray12);
    const GPUSupportedLimits3 = GPUDevice0.limits
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUQueue6 = GPUDevice0.queue
    GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline10.bindGroup",
        layout: GPUComputePipeline10.getBindGroupLayout(0),
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
    const string17 = GPUDevice0.label
    const GPUTextureView8 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView8"
    });
    const GPUBindGroupLayout2 = GPUComputePipeline6.getBindGroupLayout(0);
    const GPUSupportedFeatures4 = GPUDevice0.features
    GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits4 = GPUDevice0.limits
    const string18 = await navigator.gpu.getPreferredCanvasFormat();
    const string19 = GPURenderPipeline2.label
    GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray14);
    const string20 = GPUBuffer2.label
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline1);
    const GPUBindGroupLayout3 = GPUComputePipeline7.getBindGroupLayout(0);
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 58030952,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const ArrayBuffer1 = GPUBuffer4.getMappedRange();
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 165835104,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    });
    const ArrayBuffer2 = GPUBuffer5.getMappedRange();
    const GPUAdapterInfo1 = GPUAdapter2.info
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUCommandBuffer5 = GPUCommandEncoder10.finish();
    GPUQueue4.submit([GPUCommandBuffer5]);
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline11);
    const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    const GPUQueue7 = GPUDevice0.queue
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray15);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline11.bindGroup",
        layout: GPUComputePipeline11.getBindGroupLayout(0),
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder4.dispatchWorkgroups(122, 75, 61);
    const string21 = GPUComputePipeline4.label
    const string22 = GPURenderPassEncoder0.label
    const string23 = GPUTextureView8.label
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder1.end();
    GPURenderPassEncoder0.draw(6);
    const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const GPUQueue8 = GPUDevice0.queue
    GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray16);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    const GPUDevice1 = await GPUAdapter2.requestDevice();
    const string24 = GPUCommandEncoder9.label
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 159515856,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer6.mapAsync(GPUMapMode.READ);
    const GPUCommandEncoder12 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    GPURenderPassEncoder0.end();
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits5 = GPUDevice1.limits
    const ArrayBuffer3 = GPUBuffer6.getMappedRange();
    const GPUCommandBuffer6 = GPUCommandEncoder11.finish();
    const GPUQueue9 = GPUDevice1.queue
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture6",
        size: {
            width: 348,
            height: 258,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView9 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView9"
    });
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 3739,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.38248087535440856,
                g: 0.33242805396506037,
                b: 0.5285759305094565,
                a: 0.5165650126943049
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView9,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 2901278992,
        occlusionQuerySet: GPUQuerySet7
    });
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer0);
    GPUBuffer5.unmap();
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 8, GPUBuffer6, 50157720, 0);
    const GPUShaderModule7 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader7
    });
    const GPUSupportedFeatures5 = GPUAdapter0.features
    GPURenderPassEncoder4.end();
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    const string26 = await navigator.gpu.getPreferredCanvasFormat();
    const boolean3 = GPUAdapter0.isFallbackAdapter
    const GPUCommandBuffer7 = GPUCommandEncoder1.finish();
    GPUComputePassEncoder3.end();
    const GPUCommandBuffer8 = GPUCommandEncoder7.finish();
    const GPUShaderModule8 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader8
    });
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 25,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const string27 = GPUQuerySet0.label
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline4",
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
            module: GPUShaderModule3
        }
    });
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            module: GPUShaderModule6
        }
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUCommandBuffer9 = GPUCommandEncoder14.finish();
    GPUQueue3.submit([GPUCommandBuffer9]);
    const string28 = GPUDevice1.label
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 0, GPUBuffer6, 135411876, 4);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture7",
        size: {
            width: 1410,
            height: 3513,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView10 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView10"
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 3014,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9587624966629297,
                g: 0.35600373793574847,
                b: 0.14571584334862653,
                a: 0.47178658750756874
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView10
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 1676009679,
        occlusionQuerySet: GPUQuerySet9
    });
    const string29 = GPURenderPassEncoder5.label
    const GPUQueue10 = GPUDevice0.queue
    GPUComputePassEncoder2.end();
    GPURenderPassEncoder5.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder5.draw(10);
    GPURenderPassEncoder5.end();
    GPUBuffer5.unmap();
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    const GPUQuerySet10 = GPUDevice1.createQuerySet({
        count: 180,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUTexture8 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTexture8",
        size: {
            width: 4081,
            height: 3654,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView11 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView11"
    });
    const GPUQuerySet11 = GPUDevice1.createQuerySet({
        count: 346,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8700579441333359,
                g: 0.3825131563277824,
                b: 0.151364174752873,
                a: 0.10888813804566366
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 3187603571,
        occlusionQuerySet: GPUQuerySet11
    });
    GPURenderPassEncoder6.end();
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture9",
        size: {
            width: 3036,
            height: 3357,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView12 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView12"
    });
    const GPUQuerySet12 = GPUDevice0.createQuerySet({
        count: 1668,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.2880924022429574,
                g: 0.5016324597198593,
                b: 0.35479937491379643,
                a: 0.31877956381010353
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView12
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 4184036596,
        occlusionQuerySet: GPUQuerySet12
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer0);
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string30 = GPUComputePassEncoder4.label
    const string31 = GPUCommandEncoder6.label
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer1, 36, GPUBuffer6, 50619596, 28);
    const GPUAdapterInfo2 = GPUAdapter1.info
    const string32 = GPUQueue4.label
    const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline14);
    const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    const GPUQueue11 = GPUDevice0.queue
    GPUQueue11.writeBuffer(GPUBuffer0, 0, typedArray17);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline14.bindGroup",
        layout: GPUComputePipeline14.getBindGroupLayout(0),
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder4.dispatchWorkgroups(214, 168, 6);
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 185676988,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer7.mapAsync(GPUMapMode.READ);
    const string33 = GPUQueue10.label
    const ArrayBuffer4 = GPUBuffer7.getMappedRange();
    const string34 = GPURenderPassEncoder7.label
    const GPUComputePipeline16 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    const GPUSupportedLimits6 = GPUDevice1.limits
    const GPUShaderModule9 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader9
    });
    const string35 = await navigator.gpu.getPreferredCanvasFormat();
    const string36 = GPUBuffer1.label
    const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer0);
    const GPUQuerySet13 = GPUDevice1.createQuerySet({
        count: 2306,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder13.finish();
    const string37 = GPUQueue3.label
    const GPUBuffer8 = GPUDevice1.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 145047916,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM
    });
    GPUQueue9.writeBuffer(GPUBuffer8, 134364328, typedArray18);
    const GPUBuffer9 = GPUDevice0.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 35424308,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer9.mapAsync(GPUMapMode.READ);
    GPUComputePassEncoder4.end();
    const GPUSupportedLimits7 = GPUDevice1.limits
    GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 4, GPUBuffer6, 56034088, 0);
    const string38 = GPURenderPipeline2.label
    const GPUAdapterInfo3 = GPUAdapter0.info
    const GPUCommandBuffer11 = GPUCommandEncoder9.finish();
    const GPUAdapterInfo4 = GPUAdapter2.info
    const string39 = GPURenderPassEncoder7.label
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const ArrayBuffer5 = GPUBuffer9.getMappedRange();
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
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
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    GPURenderPassEncoder7.draw(8);
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture10",
        size: {
            width: 1235,
            height: 3687,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView13 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView13"
    });
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 2700,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8561121579532367,
                g: 0.45947977522702654,
                b: 0.33543149207122924,
                a: 0.5334706046509826
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 1668079721,
        occlusionQuerySet: GPUQuerySet14
    });
    const string40 = GPURenderPipeline0.label
    const GPUComputePassEncoder5 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUDevice2 = await GPUAdapter1.requestDevice();
    const GPUSupportedLimits8 = GPUDevice1.limits
    GPURenderPassEncoder7.draw(4);
    const GPUCommandEncoder15 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUBuffer10 = GPUDevice2.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 149930560,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    const GPUBuffer11 = GPUDevice2.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 21495520,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    GPUCommandEncoder15.copyBufferToBuffer(GPUBuffer10, 142656780, GPUBuffer11, 7161548, 2312472);
    const string41 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 256063368,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer12.mapAsync(GPUMapMode.READ);
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer0);
    GPUQueue2.writeBuffer(GPUBuffer0, 4, typedArray19);
    const GPUQueue12 = GPUDevice0.queue
    const GPUTexture11 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture11",
        size: {
            width: 264,
            height: 468,
            depthOrArrayLayers: 2
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView14 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg8unorm",
        label: "GPUTextureView14"
    });
    const GPUQuerySet15 = GPUDevice2.createQuerySet({
        count: 2767,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.3767191380368239,
                g: 0.8759806972286626,
                b: 0.5840930494238966,
                a: 0.3184307996400213
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView14,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 3160851834,
        occlusionQuerySet: GPUQuerySet15
    });
    const string42 = GPURenderPassEncoder7.label
    const string43 = GPURenderPipeline4.label
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline6);
    const GPUAdapterInfo5 = GPUAdapter1.info
    const string44 = GPUCommandEncoder15.label
    const string45 = GPUComputePipeline6.label
    const boolean5 = GPUAdapter0.isFallbackAdapter
    const GPUComputePipeline18 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule8
        },
        label: "GPUComputePipeline18",
        layout: "auto"
    });
    const GPUBuffer13 = GPUDevice1.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_SRC
    });
    const GPUBuffer14 = GPUDevice1.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUQueue13 = GPUDevice1.queue
    GPUQueue13.writeBuffer(GPUBuffer13, 0, typedArray20);
    const GPUBindGroup10 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline18.bindGroup",
        layout: GPUComputePipeline18.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer13
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer14
            }
        }]
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup10);
    GPUQueue9.writeBuffer(GPUBuffer13, 0, typedArray21);
    const string46 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUShaderModule10 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader10
    });
    const GPUShaderModule11 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const GPURenderPipeline7 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule10,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule11
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder9.draw(7);
    const GPUSupportedFeatures6 = GPUDevice0.features
    GPUComputePassEncoder5.end();
    const string47 = GPUTextureView0.label
    const boolean6 = GPUAdapter0.isFallbackAdapter
    const boolean7 = GPUAdapter0.isFallbackAdapter
    const GPUShaderModule12 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader12
    });
    const GPUComputePipeline19 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline19",
        layout: "auto"
    });
    const GPUTexture12 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32uint",
        label: "GPUTexture12",
        size: {
            width: 875,
            height: 349,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32uint"]
    });
    const GPUTextureView15 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8uint",
        label: "GPUTextureView15"
    });
    const GPUQueue14 = GPUDevice2.queue
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUDevice3 = await GPUAdapter3.requestDevice();
    const GPUSupportedFeatures7 = GPUAdapter1.features
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUQueue15 = GPUDevice3.queue
    const GPUQuerySet16 = GPUDevice1.createQuerySet({
        count: 1987,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    const string48 = GPUTextureView3.label
    GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer11);
    GPUQueue9.writeBuffer(GPUBuffer13, 4, typedArray22);
    const GPUCommandEncoder17 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const string49 = GPUQuerySet7.label
    const string50 = GPUQuerySet5.label
    const ArrayBuffer6 = GPUBuffer12.getMappedRange();
    const GPUSupportedLimits9 = GPUAdapter0.limits
    const GPUComputePassEncoder6 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUComputePipeline20 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline20",
        layout: "auto"
    });
    const GPUBuffer15 = GPUDevice2.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer16 = GPUDevice2.createBuffer({
        label: "GPUBuffer16",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    const GPUQueue16 = GPUDevice2.queue
    GPUQueue16.writeBuffer(GPUBuffer15, 0, typedArray23);
    const GPUBindGroup11 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline20.bindGroup",
        layout: GPUComputePipeline20.getBindGroupLayout(0),
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
    const GPUCommandBuffer12 = GPUCommandEncoder6.finish();
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUTextureView16 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 12,
        baseArrayLayer: 2,
        mipLevelCount: 3,
        baseMipLevel: 3,
        format: "rg16float",
        label: "GPUTextureView16"
    });
    const GPUComputePipeline21 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline21",
        layout: "auto"
    });
    const GPUQueue17 = GPUDevice2.queue
    GPUQueue17.writeBuffer(GPUBuffer15, 0, typedArray24);
    const GPUBindGroup12 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline21.bindGroup",
        layout: GPUComputePipeline21.getBindGroupLayout(0),
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
    GPUQueue11.writeBuffer(GPUBuffer0, 4, typedArray25);
    const GPUBuffer17 = GPUDevice3.createBuffer({
        label: "GPUBuffer17",
        mappedAtCreation: false,
        size: 91395708,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer17.mapAsync(GPUMapMode.READ);
    const GPUTexture13 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture13",
        size: {
            width: 3624,
            height: 3609,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView17 = GPUTexture13.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView17"
    });
    const GPUQuerySet17 = GPUDevice1.createQuerySet({
        count: 3970,
        label: "GPUQuerySet17",
        type: "occlusion"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder12.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.16310309942552237,
                g: 0.0745662529151987,
                b: 0.1814558308275307,
                a: 0.11125972419544461
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 2063048928,
        occlusionQuerySet: GPUQuerySet17
    });
    const GPUComputePipeline22 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline22",
        layout: "auto"
    });
    const GPUQueue18 = GPUDevice2.queue
    GPUQueue18.writeBuffer(GPUBuffer15, 0, typedArray26);
    const GPUBindGroup13 = GPUDevice2.createBindGroup({
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
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup13);
    const GPUCommandBuffer13 = GPUCommandEncoder16.finish();
    const GPUCommandEncoder18 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUCommandBuffer14 = GPUCommandEncoder18.finish();
    GPUQueue13.submit([GPUCommandBuffer14]);
    const GPUSupportedLimits10 = GPUAdapter2.limits
    GPUComputePassEncoder6.end();
    const GPUAdapterInfo6 = GPUAdapter2.info
    const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUCommandBuffer15 = GPUCommandEncoder19.finish();
    GPUQueue12.submit([GPUCommandBuffer15]);
    const GPUQueue19 = GPUDevice1.queue
    const GPUComputePassEncoder7 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    const GPUComputePipeline23 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline23",
        layout: "auto"
    });
    const GPUQueue20 = GPUDevice2.queue
    GPUQueue20.writeBuffer(GPUBuffer15, 0, typedArray27);
    const GPUBindGroup14 = GPUDevice2.createBindGroup({
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup14);
    const GPUComputePipeline24 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline24",
        layout: "auto"
    });
    const GPUComputePipeline25 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline25",
        layout: "auto"
    });
    const GPUQueue21 = GPUDevice2.queue
    GPUQueue21.writeBuffer(GPUBuffer15, 0, typedArray28);
    const GPUBindGroup15 = GPUDevice2.createBindGroup({
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline24);
    const string51 = GPUTextureView15.label
    const GPUShaderModule13 = GPUDevice3.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const GPUShaderModule14 = GPUDevice3.createShaderModule({
        label: "vertex",
        code: shader14
    });
    const GPURenderPipeline8 = GPUDevice3.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
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
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule14
        }
    });
    const string52 = GPUComputePipeline21.label
    const GPUDevice4 = await GPUAdapter4.requestDevice();
    const GPUSupportedLimits11 = GPUAdapter1.limits
    const string53 = GPUDevice2.label
    const string54 = GPURenderPipeline5.label
    const string55 = GPUTextureView8.label
    const GPUShaderModule15 = GPUDevice3.createShaderModule({
        label: "vertex",
        code: shader15
    });
    const GPUTexture14 = GPUDevice3.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32sint",
        label: "GPUTexture14",
        size: {
            width: 928,
            height: 376,
            depthOrArrayLayers: 36
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r32sint"]
    });
    const GPUBuffer18 = GPUDevice1.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: false,
        size: 208409220,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer18.mapAsync(GPUMapMode.READ);
    const string56 = GPURenderPassEncoder9.label
    const GPUSupportedFeatures8 = GPUDevice4.features
    const string57 = GPUComputePipeline22.label
    const string58 = GPUComputePassEncoder7.label
    const GPUShaderModule16 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader16
    });
    const GPUComputePipeline26 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline26",
        layout: "auto"
    });
    const GPUQuerySet18 = GPUDevice1.createQuerySet({
        count: 2533,
        label: "GPUQuerySet18",
        type: "occlusion"
    });
    const GPUSupportedFeatures9 = GPUDevice1.features
    GPURenderPassEncoder10.end();
    const GPUTexture15 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture15",
        size: {
            width: 375,
            height: 138,
            depthOrArrayLayers: 32
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg32uint"]
    });
    const GPUComputePipeline27 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline27",
        layout: "auto"
    });
    const GPUQueue22 = GPUDevice2.queue
    GPUQueue22.writeBuffer(GPUBuffer15, 0, typedArray29);
    const GPUBindGroup16 = GPUDevice2.createBindGroup({
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup16);
    const boolean8 = GPUAdapter2.isFallbackAdapter
    const GPUSupportedFeatures10 = GPUAdapter4.features
    const string59 = GPUCommandEncoder12.label
    GPUComputePassEncoder7.end();
    const string60 = GPUQuerySet18.label
    const GPUQueue23 = GPUDevice1.queue
    const GPUBindGroupLayout4 = GPUComputePipeline26.getBindGroupLayout(0);
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer13, 0, GPUBuffer8, 40236604, 0);
    GPUBuffer12.unmap();
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedLimits12 = GPUAdapter0.limits
    const string61 = GPUDevice0.label
    const GPUQuerySet19 = GPUDevice0.createQuerySet({
        count: 1387,
        label: "GPUQuerySet19",
        type: "occlusion"
    });
    GPUQueue11.writeBuffer(GPUBuffer0, 4, typedArray30);
    const GPUComputePipeline28 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline28",
        layout: "auto"
    });
    GPUBuffer12.unmap();
    const GPUBuffer19 = GPUDevice4.createBuffer({
        label: "GPUBuffer19",
        mappedAtCreation: false,
        size: 7630268,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUComputePipeline29 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline29",
        layout: "auto"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline29);
    const GPUQueue24 = GPUDevice4.queue
    const GPUTexture16 = GPUDevice4.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8uint",
        label: "GPUTexture16",
        size: {
            width: 2600,
            height: 2071,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8uint"]
    });
    GPUComputePassEncoder8.end();
    const GPUAdapterInfo7 = GPUAdapter2.info
    const GPUBindGroupLayout5 = GPUComputePipeline18.getBindGroupLayout(0);
    const string62 = GPUTextureView14.label
    GPURenderPassEncoder8.end();
    const GPUCommandBuffer16 = GPUCommandEncoder2.finish();
    const GPUSupportedLimits13 = GPUAdapter3.limits
    const GPUBindGroupLayout6 = GPUComputePipeline0.getBindGroupLayout(0);
    const string63 = GPURenderPassEncoder9.label
    const GPUQuerySet20 = GPUDevice3.createQuerySet({
        count: 2548,
        label: "GPUQuerySet20",
        type: "occlusion"
    });
    const GPUSupportedLimits14 = GPUAdapter0.limits
    GPUBuffer15.unmap();
    const boolean9 = GPUAdapter2.isFallbackAdapter
    const GPUCommandEncoder20 = GPUDevice3.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const GPUTexture17 = GPUDevice4.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "GPUTexture17",
        size: {
            width: 3917,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16uint"]
    });
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQuerySet21 = GPUDevice2.createQuerySet({
        count: 548,
        label: "GPUQuerySet21",
        type: "occlusion"
    });
    const boolean10 = GPUAdapter1.isFallbackAdapter
    const GPUAdapterInfo8 = GPUAdapter1.info
    const GPUComputePipeline30 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline30",
        layout: "auto"
    });
    const GPUShaderModule17 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader17
    });
    const GPUComputePipeline31 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule17
        },
        label: "GPUComputePipeline31",
        layout: "auto"
    });
    const GPUBuffer20 = GPUDevice3.createBuffer({
        label: "GPUBuffer20",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    const GPUBuffer21 = GPUDevice3.createBuffer({
        label: "GPUBuffer21",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUQueue25 = GPUDevice3.queue
    GPUQueue25.writeBuffer(GPUBuffer20, 0, typedArray31);
    const GPUBindGroup17 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline31.bindGroup",
        layout: GPUComputePipeline31.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer20
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer21
            }
        }]
    });
    const GPUCommandEncoder21 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUBuffer22 = GPUDevice4.createBuffer({
        label: "GPUBuffer22",
        mappedAtCreation: false,
        size: 244281360,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    const GPUComputePassEncoder9 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const string64 = GPUComputePassEncoder9.label
    const GPUComputePipeline32 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline32",
        layout: "auto"
    });
    GPUComputePassEncoder9.setPipeline(GPUComputePipeline32);
    const GPUAdapterInfo9 = GPUAdapter1.info
    const GPUShaderModule18 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader18
    });
    const ArrayBuffer7 = GPUBuffer17.getMappedRange();
    const GPUComputePipeline33 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule9
        },
        label: "GPUComputePipeline33",
        layout: "auto"
    });
    const GPUComputePipeline34 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline34",
        layout: "auto"
    });
    const GPUQueue26 = GPUDevice0.queue
    GPUQueue26.writeBuffer(GPUBuffer0, 0, typedArray32);
    const GPUBindGroup18 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline34.bindGroup",
        layout: GPUComputePipeline34.getBindGroupLayout(0),
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
    const string65 = GPUComputePassEncoder9.label
    const GPUTexture18 = GPUDevice3.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture18",
        size: {
            width: 3481,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8snorm"]
    });
    GPURenderPassEncoder9.draw(9);
    GPUComputePassEncoder9.end();
    const GPUComputePassEncoder10 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const string66 = GPUComputePassEncoder10.label
    const string67 = GPUQueue2.label
    const GPUTexture19 = GPUDevice3.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture19",
        size: {
            width: 812,
            height: 1670,
            depthOrArrayLayers: 4
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView18 = GPUTexture19.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView18"
    });
    const GPUQuerySet22 = GPUDevice3.createQuerySet({
        count: 1819,
        label: "GPUQuerySet22",
        type: "occlusion"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.009497334981039995,
                g: 0.9334070962440414,
                b: 0.08832059203672504,
                a: 0.80676790670135
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView18
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 1232151955,
        occlusionQuerySet: GPUQuerySet22
    });
    const GPUCommandEncoder22 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    GPURenderPassEncoder9.draw(8);
    const GPUBuffer23 = GPUDevice3.createBuffer({
        label: "GPUBuffer23",
        mappedAtCreation: false,
        size: 140716712,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer23.mapAsync(GPUMapMode.READ);
    const GPUComputePassEncoder11 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const string68 = GPURenderPassEncoder9.label
    const GPUBindGroupLayout7 = GPUComputePipeline22.getBindGroupLayout(0);
    const GPUShaderModule19 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader19
    });
    const string69 = GPUTextureView12.label
    const GPUAdapterInfo10 = GPUAdapter4.info
    GPUBuffer13.unmap();
    const string70 = GPUQueue24.label
    const GPUBuffer24 = GPUDevice0.createBuffer({
        label: "GPUBuffer24",
        mappedAtCreation: false,
        size: 32749704,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer24.mapAsync(GPUMapMode.READ);
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const string71 = GPURenderPipeline1.label
    GPUComputePassEncoder10.end();
    const GPUShaderModule20 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader20
    });
    const GPURenderPipeline9 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule20,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "dst"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule7
        }
    });
    const GPUQuerySet23 = GPUDevice3.createQuerySet({
        count: 1952,
        label: "GPUQuerySet23",
        type: "occlusion"
    });
    const string72 = GPUTextureView7.label
    const GPUCommandEncoder23 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUCommandBuffer17 = GPUCommandEncoder23.finish();
    GPUQueue24.submit([GPUCommandBuffer17]);
    const string73 = GPUBuffer21.label
    const GPUBuffer25 = GPUDevice0.createBuffer({
        label: "GPUBuffer25",
        mappedAtCreation: false,
        size: 208790064,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer25.mapAsync(GPUMapMode.READ);
    const GPUAdapterInfo11 = GPUAdapter2.info
    const string74 = GPUBuffer7.label
    const GPUQueue27 = GPUDevice2.queue
    const GPURenderPipeline10 = GPUDevice3.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline10",
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
            module: GPUShaderModule15
        }
    });
    const string75 = GPURenderPassEncoder9.label
    const GPUQueue28 = GPUDevice2.queue
    const GPUSupportedFeatures11 = GPUDevice0.features
    const GPUBindGroupLayout8 = GPUComputePipeline31.getBindGroupLayout(0);
    GPURenderPassEncoder9.end();
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const string76 = GPUQuerySet19.label
    const GPUAdapterInfo12 = GPUAdapter2.info
    const GPUComputePipeline35 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule18
        },
        label: "GPUComputePipeline35",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline35);
    const GPUSupportedLimits15 = GPUAdapter6.limits
    const string77 = GPUComputePipeline13.label
    const GPUShaderModule21 = GPUDevice4.createShaderModule({
        label: "fragment",
        code: shader21
    });
    const GPUShaderModule22 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader22
    });
    const GPURenderPipeline11 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule21,
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
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "bgra8unorm",
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule22
        }
    });
    const GPURenderPipeline12 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule21,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule22
        }
    });
    const string78 = GPUTextureView18.label
    const GPUComputePipeline36 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule18
        },
        label: "GPUComputePipeline36",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline36);
    const ArrayBuffer8 = GPUBuffer23.getMappedRange();
    const GPUBuffer26 = GPUDevice1.createBuffer({
        label: "GPUBuffer26",
        mappedAtCreation: false,
        size: 74037848,
        usage: GPUBufferUsage.INDEX
    });
    const GPUComputePipeline37 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule18
        },
        label: "GPUComputePipeline37",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline37);
    const string79 = GPUCommandEncoder21.label
    const GPUQueue29 = GPUDevice2.queue
    const string80 = GPURenderPipeline12.label
    const string81 = GPURenderPipeline0.label
    const ArrayBuffer9 = GPUBuffer25.getMappedRange();
    const GPURenderPipeline13 = GPUDevice3.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule13,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule14
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline13);
    const GPUTexture20 = GPUDevice2.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture20",
        size: {
            width: 658,
            height: 125,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView19 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView19"
    });
    const GPUQuerySet24 = GPUDevice2.createQuerySet({
        count: 2032,
        label: "GPUQuerySet24",
        type: "occlusion"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8937477662876658,
                g: 0.02382378015923281,
                b: 0.5120830883062698,
                a: 0.08191127797362086
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView19,
            depthSlice: 6
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 1649507450,
        occlusionQuerySet: GPUQuerySet24
    });
    const string82 = GPUComputePipeline22.label
    GPUComputePassEncoder11.end();
    const GPUSupportedLimits16 = GPUAdapter1.limits
    GPUQueue2.writeBuffer(GPUBuffer0, 4, typedArray33);
    const GPUComputePassEncoder12 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUComputePipeline38 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline38",
        layout: "auto"
    });
    const GPUBuffer27 = GPUDevice4.createBuffer({
        label: "GPUBuffer27",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    });
    const GPUBuffer28 = GPUDevice4.createBuffer({
        label: "GPUBuffer28",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT
    });
    const GPUQueue30 = GPUDevice4.queue
    GPUQueue30.writeBuffer(GPUBuffer27, 0, typedArray34);
    const GPUBindGroup19 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline38.bindGroup",
        layout: GPUComputePipeline38.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer27
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer28
            }
        }]
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup19);
    const string83 = GPUDevice2.label
    const ArrayBuffer10 = GPUBuffer18.getMappedRange();
    GPURenderPassEncoder11.end();
    GPUQueue22.writeBuffer(GPUBuffer15, 0, typedArray35);
    const GPUTextureView20 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "GPUTextureView20"
    });
    const string84 = GPUQuerySet7.label
    const GPUSupportedLimits17 = GPUAdapter6.limits
    const GPUTextureView21 = GPUTexture9.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 9,
        baseArrayLayer: 5,
        mipLevelCount: 2,
        baseMipLevel: 5,
        format: "rg8unorm",
        label: "GPUTextureView21"
    });
    GPUComputePassEncoder12.end();
    const GPUComputePipeline39 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline39",
        layout: "auto"
    });
    const GPUQueue31 = GPUDevice2.queue
    GPUQueue31.writeBuffer(GPUBuffer15, 0, typedArray36);
    const GPUBindGroup20 = GPUDevice2.createBindGroup({
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
    const string85 = GPURenderPassEncoder12.label
    const GPUComputePassEncoder13 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const string86 = GPUCommandEncoder15.label
    GPUCommandEncoder21.copyBufferToBuffer(GPUBuffer28, 52, GPUBuffer22, 55955340, 8);
    const string87 = GPUCommandEncoder17.label
    const GPUTexture21 = GPUDevice4.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture21",
        size: {
            width: 176,
            height: 412,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView22 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView22"
    });
    const GPUQuerySet25 = GPUDevice4.createQuerySet({
        count: 1995,
        label: "GPUQuerySet25",
        type: "occlusion"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder21.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6209996937698486,
                g: 0.34332705131177654,
                b: 0.13362493924399121,
                a: 0.5870296010940929
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView22,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 3086853384,
        occlusionQuerySet: GPUQuerySet25
    });
    const GPUAdapterInfo13 = GPUAdapter3.info
    const GPUBuffer29 = GPUDevice0.createBuffer({
        label: "GPUBuffer29",
        mappedAtCreation: true,
        size: 153147732,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    GPUCommandEncoder17.copyBufferToBuffer(GPUBuffer16, 20, GPUBuffer16, 52, 4);
    const GPUBuffer30 = GPUDevice4.createBuffer({
        label: "GPUBuffer30",
        mappedAtCreation: false,
        size: 112583336,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer30.mapAsync(GPUMapMode.READ);
    const GPUTextureView23 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView23"
    });
    const GPUSupportedFeatures12 = GPUAdapter3.features
    const string88 = GPUComputePassEncoder13.label
    const GPUCommandEncoder24 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUCommandBuffer18 = GPUCommandEncoder24.finish();
    GPUQueue27.submit([GPUCommandBuffer18]);
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED
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
            module: GPUShaderModule6
        }
    });
    const string89 = GPUCommandEncoder15.label
    const GPUComputePassEncoder14 = GPUCommandEncoder22.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const string90 = GPUTextureView17.label
    const GPUComputePipeline40 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule19
        },
        label: "GPUComputePipeline40",
        layout: "auto"
    });
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline40);
    const GPUComputePipeline41 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule19
        },
        label: "GPUComputePipeline41",
        layout: "auto"
    });
    const GPUBuffer31 = GPUDevice3.createBuffer({
        label: "GPUBuffer31",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer32 = GPUDevice3.createBuffer({
        label: "GPUBuffer32",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUQueue32 = GPUDevice3.queue
    GPUQueue32.writeBuffer(GPUBuffer31, 0, typedArray37);
    const GPUBindGroup21 = GPUDevice3.createBindGroup({
        label: "GPUComputePipeline40.bindGroup",
        layout: GPUComputePipeline40.getBindGroupLayout(0),
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
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder13.dispatchWorkgroups(70, 187, 46);
    const GPUComputePipeline42 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule19
        },
        label: "GPUComputePipeline42",
        layout: "auto"
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline42);
    GPUComputePassEncoder13.end();
    const GPUCommandBuffer19 = GPUCommandEncoder12.finish();
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer16);
    const ArrayBuffer11 = GPUBuffer29.getMappedRange();
    const GPUTextureView24 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8uint",
        label: "GPUTextureView24"
    });
    const GPUTexture22 = GPUDevice3.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture22",
        size: {
            width: 2694,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const boolean11 = GPUAdapter1.isFallbackAdapter
    const GPUTextureView25 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView25"
    });
    const string91 = GPUComputePipeline39.label
    GPUCommandEncoder17.copyBufferToBuffer(GPUBuffer16, 0, GPUBuffer15, 8, 0);
    GPUBuffer21.unmap();
    const string92 = GPUComputePipeline30.label
    const boolean12 = GPUAdapter6.isFallbackAdapter
    const GPUComputePipeline43 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline43",
        layout: "auto"
    });
    const GPUQueue33 = GPUDevice4.queue
    GPUQueue33.writeBuffer(GPUBuffer27, 0, typedArray38);
    const GPUBindGroup22 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline43.bindGroup",
        layout: GPUComputePipeline43.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer27
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer28
            }
        }]
    });
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup22);
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer28);
    const GPUSupportedFeatures13 = GPUAdapter4.features
    const string93 = GPUComputePassEncoder14.label
    const GPUQuerySet26 = GPUDevice3.createQuerySet({
        count: 90,
        label: "GPUQuerySet26",
        type: "occlusion"
    });
    const GPUComputePipeline44 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline44",
        layout: "auto"
    });
    const GPUComputePipeline45 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline45",
        layout: "auto"
    });
    const GPUQueue34 = GPUDevice4.queue
    GPUQueue34.writeBuffer(GPUBuffer27, 0, typedArray39);
    const GPUBindGroup23 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline45.bindGroup",
        layout: GPUComputePipeline45.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer27
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer28
            }
        }]
    });
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup23);
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline44);
    const string94 = GPURenderPassEncoder13.label
    const GPUBindGroupLayout9 = GPUComputePipeline44.getBindGroupLayout(0);
    const string95 = GPURenderPassEncoder13.label
    const string96 = GPURenderPassEncoder13.label
    const GPUSupportedLimits18 = GPUAdapter2.limits
    const GPUTextureView26 = GPUTexture21.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 5,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView26"
    });
    const string97 = GPUTextureView8.label
    const GPUBuffer33 = GPUDevice2.createBuffer({
        label: "GPUBuffer33",
        mappedAtCreation: false,
        size: 212440584,
        usage: GPUBufferUsage.INDIRECT
    });
    const string98 = GPUQueue20.label
    const string99 = GPUQuerySet18.label
    const GPUSupportedFeatures14 = GPUAdapter5.features
    const string100 = GPUCommandEncoder17.label
    const GPUComputePipeline46 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule12
        },
        label: "GPUComputePipeline46",
        layout: "auto"
    });
    GPUBuffer25.unmap();
    const GPUQueue35 = GPUDevice1.queue
    const GPURenderPipeline15 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule21,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule22
        }
    });
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline15);
    GPURenderPassEncoder13.draw(6);
    const GPUShaderModule23 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader23
    });
    const string101 = GPUQueue4.label
    const string102 = GPUQuerySet7.label
    const GPUComputePipeline47 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline47",
        layout: "auto"
    });
    const GPUQueue36 = GPUDevice4.queue
    GPUQueue36.writeBuffer(GPUBuffer27, 0, typedArray40);
    const GPUBindGroup24 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline47.bindGroup",
        layout: GPUComputePipeline47.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer27
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer28
            }
        }]
    });
    const GPUCommandEncoder25 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    const string103 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder12.end();
    GPUQueue30.writeBuffer(GPUBuffer22, 34516092, typedArray41);
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer28);
    GPUBuffer24.unmap();
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer22);
    const GPUSupportedLimits19 = GPUDevice2.limits
    const string104 = GPUTextureView26.label
    const boolean13 = GPUAdapter0.isFallbackAdapter
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer28);
    GPURenderPassEncoder13.draw(9);
    const string105 = GPUComputePipeline34.label
    const string106 = GPUDevice4.label
    GPURenderPassEncoder13.end();
    const GPUQuerySet27 = GPUDevice2.createQuerySet({
        count: 2309,
        label: "GPUQuerySet27",
        type: "occlusion"
    });
    const GPUComputePipeline48 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule18
        },
        label: "GPUComputePipeline48",
        layout: "auto"
    });
    const GPUQueue37 = GPUDevice2.queue
    GPUQueue37.writeBuffer(GPUBuffer15, 0, typedArray42);
    const GPUBindGroup25 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline48.bindGroup",
        layout: GPUComputePipeline48.getBindGroupLayout(0),
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
    const ArrayBuffer12 = GPUBuffer30.getMappedRange();
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBuffer34 = GPUDevice3.createBuffer({
        label: "GPUBuffer34",
        mappedAtCreation: false,
        size: 171134268,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST
    });
    const GPUCommandEncoder26 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const GPUCommandBuffer20 = GPUCommandEncoder26.finish();
    GPUQueue34.submit([GPUCommandBuffer20]);
    const GPUSupportedLimits20 = GPUAdapter0.limits
    const GPUTexture23 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture23",
        size: {
            width: 1023,
            height: 280,
            depthOrArrayLayers: 53
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView27 = GPUTexture23.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView27"
    });
    const GPUQuerySet28 = GPUDevice1.createQuerySet({
        count: 1876,
        label: "GPUQuerySet28",
        type: "occlusion"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder25.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.15342568176873883,
                g: 0.5710242491101597,
                b: 0.5602970103479872,
                a: 0.44619493974564906
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView27,
            depthSlice: 44
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 3272940953,
        occlusionQuerySet: GPUQuerySet28
    });
    const GPURenderPipeline16 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule20,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline16",
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
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline16);
    const GPUQueue38 = GPUDevice4.queue
    const string107 = GPUComputePipeline38.label
    const GPURenderPipeline17 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline17",
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
            module: GPUShaderModule6
        }
    });
    GPUQueue7.writeBuffer(GPUBuffer0, 4, typedArray43);
    const GPUComputePassEncoder15 = GPUCommandEncoder21.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const GPUBuffer35 = GPUDevice4.createBuffer({
        label: "GPUBuffer35",
        mappedAtCreation: false,
        size: 180098188,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const GPUTexture24 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "GPUTexture24",
        size: {
            width: 482,
            height: 1024,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16uint"]
    });
    const string108 = GPUQuerySet11.label
    const GPUAdapterInfo14 = GPUAdapter4.info
    const GPUTextureView28 = GPUTexture24.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba16uint",
        label: "GPUTextureView28"
    });
    const GPUTexture25 = GPUDevice4.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture25",
        size: {
            width: 854,
            height: 465,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder15.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const GPUAdapterInfo15 = GPUAdapter3.info

}
main().catch(console.error);