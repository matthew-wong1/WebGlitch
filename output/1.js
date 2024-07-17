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
// Seed: 6182115232769204830
const typedArray22 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader14 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader13 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray21 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader12 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray20 = new Uint8Array([6696, -8606, 6341, 2927])
const shader11 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray19 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray18 = new Float32Array([5193, -3076, -3593, 4551, -6540, -6100, -7991, 5871, -1168, 399, -5171, -4924, -2671, 7234, 1298, 2336, 9, 1379, -5484, -8024, -3561, -4255, -7889, 27, 5730, -943, -2200, -9326, -796, 6665, -2499, -3922, -7473, -6860, 8406, -4415, 7506, 6743, 1294, -2497, 8097, 2884, -5984, 5405, -1411, 117, -8690, 650, 5882, -7311, 2269, -4137, 4751, 7513, 2271, -5102, 4922, -8273, 7316, 3533, 2678, 8442, 5941, -4774, -3818, -2071, -4202, 2868, -7825, 7942, -7998, -7076, 9159, 386, -8641, 5074, -4040, -5025, -4185, -2031, 5648, -9131, 9422, -9046, -8503, 729, -4412, 8485, 2196, -2172, 6995, -6646, 2642, -4868, -6349, -9661, -1651, 3891, -4902, 8002, 636, -11, -8300, 8653, 4531, 2042, -7004, -1634, 1519, -8328, -7736, 3003, -342, 9428, -1239, -4953, 4330, -5374, -188, -1628, -9856, -8708, 9278, 8262, 7516, -5603, -9197, 2772, -5269, -2291, -2847, 7469, -8001, 2835, 5406, 3321, -1033, -9941, 322, -7608, 3782, 6609, -6344, 3131, 7819, 1961, 5611, 8271, -8703, 1424, 8085, 1386, 746, -2369, -3217, 5710, -6774, -3622, -3828, 6845, -3907, 1075, 4416, 7172, -4502, 4917, -2157, 1642, 2610, -9553, -6999, 938, -8745, -7580, -8758, 8102, 8865, 4481, 2843, -2783, 5511, -498, 3694, 9627, 4108, 6841, -1393, -5152, 4670, -7399, -3749, -812, -4581, -2624, -7066, -8323, -1639, -9708, -1686, -8475, 2946, 1313, -1039, -3783, 8482, -471, -2093, -6431, 4185, 8497, -1599, -2621, -8454, 3945, 2196, 1871, -9217, 9349, -5576, -6819, -2086, 4522, -6687, -8930, 6028, 8562, -9537, 1880, -1873, 9975, -911, -1694, -3505, 7318, -7455, 3632, -4488, 8582, 9676, -2265, -4251, -7930, -7925, -5414, 4988, -8117, 439, -3385, 5802, -5712, -2209, 4255, 7118, -2744, 303, 227, -3072, -6417, -8143, 5040, -5060, 2845, 115, -6470, -2315, 5199, 5698, -5339, -6156, 90, -5588, 4348, -3962, -689, 2009, -9669, -7225, 3799, 6678, 7015, 8600, -4086, -8103, -120, 5690, 4361, 9796, 9388, 5170, 5856, -6637, 9524, 2222, -1538, 7270, -539, -2318, 5214, -8983, -2341, -1910, -1312, -4144, -2592, 9745, 3879, 6732, -413, -2137])
const typedArray17 = new Int8Array([-3653, 5352, 3881, 4209, -2774, -5855, -294, -2977, 4995, 9018, 510, -3711, -8163, -2163, -1688, -2184])
const typedArray16 = new Float32Array([2503, 7095, 1831, -4570, 7982, -1864, -6504, -7128, -9745, -272, -7055, -5409, -6708, 4480, -7693, -6324, -8717, -8251, 9413, 7777, -777, -4934, 6730, -2725, -210, -2957, 5500, -357, 6553, -2451, -4699, -3649, -323, 3000, 1638, -2276, -8395, 1370, -9592, 9082, 7738, -3220, 1526, -9714, 6580, 9736, -6483, -4126, -4129, 5424, -2271, 2739, -5187, -2817, 1819, -3197, -5816, -5237, -4330, -609, -8734, -2380, 7845, -5729, 6360, 584, 6147, -7676, -1135, -3221, 4933, 6966, -3055, 8802, 5308, 9332, 6086, 1505, 6753, -7053, -5421, 2971, 2858, -1612, -9461, -7468, 9967, -7712, -4031, -5630, 6843, -2909, -775, -5158, 9298, 5269, 7215, 7812, -4572, 6920, 545, 1411, -2827, 3837, -3403, 2657, 5473, -728, -7650, -3943, 7515, 3])
const typedArray15 = new Uint8Array([5127, -3298, 588, -6983])
const typedArray14 = new Float32Array([-5811])
const typedArray13 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader10 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray12 = new Int8Array([9550, -8024, 9280, -6267])
const shader9 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray11 = new Float32Array([-1073])
const typedArray10 = new Uint8Array([-1150, 4948, -4806, 6488, 2506, 7329, -5614, 2655, 2771, -5299, -6613, -9264, -4913, 7394, 3298, -4736, -6422, 4627, -4222, 6544])
const typedArray9 = new Int8Array([-6380, 4899, 6661, -3412, 1732, 4094, -4835, 7029])
const shader8 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray8 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader7 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader6 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray7 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader5 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray6 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader4 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray5 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader3 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray4 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const typedArray3 = new Int8Array([4697, 4407, 6775, -6390, -3379, 9117, -744, -4053, -4118, -4404, -1510, -6084])
const typedArray2 = new Uint8Array([-3344, 1623, -1382, -7496])
const typedArray1 = new Uint8Array([8268, -1806, 6694, -3112, 3548, 822, 3529, -3677, -4516, 1837, -4543, -1672])
const typedArray0 = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const shader2 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader0 = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline0",
        layout: "auto",
        multisample: {
            count: 4
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
    const GPUSupportedLimits0 = GPUDevice0.limits
    const GPUCommandEncoder0 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder0"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture0",
        size: {
            width: 1798,
            height: 848,
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
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 1627,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.033439368676841275,
                g: 1.3398585480046135,
                b: 1.2877281504928508,
                a: 0.8291989159537008
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 1318731546,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder0.end();
    const string0 = GPUComputePipeline0.label
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture1",
        size: {
            width: 1619,
            height: 2016,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView1"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder0.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.07382274259576227,
                g: 0.4374459121319292,
                b: 1.604393646987716,
                a: 0.1603597156318941
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 2096928190,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "constant",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline1",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    const string1 = GPUDevice0.label
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures0 = GPUAdapter0.features
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUComputePassEncoder0 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder0"
    });
    GPUComputePassEncoder0.end();
    const GPUAdapterInfo1 = GPUAdapter0.info
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture2",
        size: {
            width: 134,
            height: 492,
            depthOrArrayLayers: 7
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView2 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgb10a2unorm",
        label: "GPUTextureView2"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8996054867300265,
                g: 0.3082076869407495,
                b: 0.21751074748822274,
                a: 1.1222516746998605
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 4051939323,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.end();
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUComputePassEncoder2 = GPUCommandEncoder2.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const GPUSupportedFeatures1 = GPUDevice0.features
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUComputePassEncoder3 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "zero"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.GREEN
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder2.setPipeline(GPURenderPipeline2);
    GPURenderPassEncoder2.draw(5);
    const string2 = GPUDevice0.label
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r32float",
        label: "GPUTexture3",
        size: {
            width: 628,
            height: 3010,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32float"]
    });
    const GPUQueue0 = GPUDevice0.queue
    const string3 = GPUQueue0.label
    const string4 = GPUQueue0.label
    const GPUSupportedFeatures2 = GPUDevice0.features
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUComputePassEncoder3.end();
    const GPUCommandBuffer1 = GPUCommandEncoder3.finish();
    const string5 = GPUQuerySet0.type
    GPUComputePassEncoder2.setPipeline(GPUComputePipeline0);
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder2.dispatchWorkgroups(167, 76, 37);
    const boolean0 = GPUAdapter0.isFallbackAdapter
    GPUComputePassEncoder2.end();
    const GPUCommandBuffer2 = GPUCommandEncoder2.finish();
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUQueue1 = GPUDevice0.queue
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder2.end();
    const GPUCommandBuffer3 = GPUCommandEncoder1.finish();
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const string6 = GPUCommandEncoder4.label
    const boolean1 = GPUAdapter0.isFallbackAdapter
    GPUQueue1.submit([GPUCommandBuffer0]);
    GPUQueue1.writeBuffer(GPUBuffer1, 16, typedArray1);
    const GPUSupportedLimits1 = GPUDevice0.limits
    const string7 = GPUComputePipeline0.label
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 181943252,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM
    });
    const GPUComputePassEncoder4 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture4",
        size: {
            width: 1179,
            height: 1422,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView3 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView3"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.03410000460348117,
                g: 0.19681032348750627,
                b: 0.545262389732672,
                a: 0.6174765740530566
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView3
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 4036468588,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder3.end();
    const GPUAdapterInfo2 = GPUAdapter2.info
    const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUSupportedFeatures3 = GPUAdapter1.features
    const GPUSupportedLimits2 = GPUAdapter2.limits
    const GPUSupportedFeatures4 = GPUAdapter1.features
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture5",
        size: {
            width: 329,
            height: 4082,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView4 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "GPUTextureView4"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6005940788451734,
                g: 1.3188743265062672,
                b: 1.6706944282618483,
                a: 1.7596316031876729
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView4
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 3949098784,
        occlusionQuerySet: GPUQuerySet0
    });
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "src-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline3",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder4.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder4.draw(6);
    const GPUQueue2 = GPUDevice0.queue
    const string8 = GPUDevice0.label
    const string9 = GPUTextureView1.label
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup0);
    const GPUSupportedLimits3 = GPUDevice0.limits
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder4.dispatchWorkgroups(249, 156, 55);
    const string10 = GPUQuerySet0.label
    const string11 = GPUQuerySet0.count
    const string12 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder4.end();
    const GPUSupportedFeatures5 = GPUDevice0.features
    const string13 = GPUCommandEncoder4.label
    const string14 = GPUQueue1.label
    const GPUSupportedLimits4 = GPUAdapter1.limits
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder4.draw(9);
    GPUQueue0.writeBuffer(GPUBuffer1, 28, typedArray2);
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 2877,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    const boolean2 = GPUAdapter3.isFallbackAdapter
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUComputePassEncoder5 = GPUCommandEncoder4.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder5.dispatchWorkgroups(6, 79, 56);
    const GPUBindGroupLayout1 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture6",
        size: {
            width: 512,
            height: 2842,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView5 = GPUTexture6.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "GPUTextureView5"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8760840231343028,
                g: 0.8018815210243544,
                b: 1.1133191543181487,
                a: 1.896687737399986
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView5
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 3430276494,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder4.draw(8);
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 4090,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup0);
    const string15 = GPUDevice0.label
    GPUComputePassEncoder5.end();
    const GPUCommandBuffer4 = GPUCommandEncoder4.finish();
    const string16 = GPURenderPipeline3.label
    const GPUSupportedLimits5 = GPUDevice0.limits
    const GPUComputePassEncoder6 = GPUCommandEncoder7.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    const GPUQueue3 = GPUDevice0.queue
    const string17 = GPUComputePassEncoder6.label
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL
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
    GPUQueue0.writeBuffer(GPUBuffer1, 4, typedArray3);
    const string18 = GPUDevice0.label
    const GPUSupportedLimits6 = GPUAdapter2.limits
    GPUQueue0.submit([GPUCommandBuffer4]);
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    const GPUQueue4 = GPUDevice0.queue
    const string19 = GPUQuerySet1.type
    const string20 = GPURenderPassEncoder4.label
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUSupportedFeatures6 = GPUDevice0.features
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray4);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
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
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader3
    });
    const GPUAdapterInfo3 = GPUAdapter2.info
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUSupportedFeatures7 = GPUDevice0.features
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray5);
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
    const string21 = GPUComputePipeline2.label
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    GPURenderPassEncoder5.end();
    const GPUCommandBuffer5 = GPUCommandEncoder6.finish();
    const GPUComputePassEncoder7 = GPUCommandEncoder8.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup1);
    const GPUTextureView6 = GPUTexture3.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r32float",
        label: "GPUTextureView6"
    });
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer2);
    const GPUSupportedLimits7 = GPUDevice0.limits
    GPURenderPassEncoder4.draw(7);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    const GPUSupportedLimits8 = GPUAdapter5.limits
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline2);
    const GPUTexture7 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture7",
        size: {
            width: 437,
            height: 873,
            depthOrArrayLayers: 48
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const string22 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    const string23 = GPURenderPipeline2.label
    GPURenderPassEncoder4.end();
    const GPUTextureView7 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView7"
    });
    const string24 = GPUDevice0.label
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder6.dispatchWorkgroups(194, 27, 62);
    const string25 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder6.dispatchWorkgroups(182, 31, 52);
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUQueue5 = GPUDevice0.queue
    const GPUSupportedFeatures8 = GPUAdapter5.features
    GPUComputePassEncoder6.end();
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUTexture8 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg8unorm",
        label: "GPUTexture8",
        size: {
            width: 3613,
            height: 728,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView8 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView8"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.9648187337179648,
                g: 1.4567638965896916,
                b: 1.1309700036187407,
                a: 0.798577477829973
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 2028951002,
        occlusionQuerySet: GPUQuerySet2
    });
    const string26 = GPURenderPassEncoder6.label
    const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "src-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline5",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline5);
    GPURenderPassEncoder6.draw(1);
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 185,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const string27 = GPURenderPassEncoder6.label
    const string28 = GPUQuerySet1.type
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer2);
    const GPUBindGroupLayout3 = GPUComputePipeline1.getBindGroupLayout(0);
    const GPUShaderModule4 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader4
    });
    const string29 = GPUTextureView8.label
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    const string30 = GPUQuerySet2.type
    const GPUComputePassEncoder8 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 1173,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "constant"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule4
        }
    });
    const GPUSupportedLimits9 = GPUAdapter2.limits
    GPUQueue5.submit([GPUCommandBuffer2]);
    const GPUSupportedFeatures9 = GPUAdapter0.features
    GPURenderPassEncoder6.draw(6);
    const GPUSupportedFeatures10 = GPUAdapter2.features
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline4);
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray6);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline4.bindGroup",
        layout: GPUComputePipeline4.getBindGroupLayout(0),
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder8.dispatchWorkgroups(137, 71, 30);
    const boolean3 = GPUAdapter2.isFallbackAdapter
    const GPUTexture9 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture9",
        size: {
            width: 705,
            height: 71,
            depthOrArrayLayers: 23
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8snorm"]
    });
    const string31 = GPUTextureView3.label
    const string32 = GPUTextureView7.label
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    const string33 = GPUDevice0.label
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: true,
        size: 56439816,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    const string34 = GPUQuerySet4.type
    const string35 = GPUQuerySet4.type
    const string36 = GPUDevice0.label
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const GPUSupportedFeatures11 = GPUDevice0.features
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer2);
    const GPUShaderModule5 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader5
    });
    const GPUComputePassEncoder9 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const string37 = GPUComputePassEncoder9.label
    const GPUTextureView9 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView9"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup3);
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 2756,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    GPUComputePassEncoder8.end();
    const string38 = GPUQuerySet4.label
    const GPUQueue6 = GPUDevice0.queue
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    GPURenderPassEncoder6.setPipeline(GPURenderPipeline5);
    const boolean4 = GPUAdapter1.isFallbackAdapter
    const GPUSupportedLimits10 = GPUAdapter2.limits
    const GPUSupportedLimits11 = GPUAdapter4.limits
    const GPUTextureView10 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView10"
    });
    GPURenderPassEncoder6.setVertexBuffer(0, GPUBuffer2);
    GPURenderPassEncoder6.end();
    const string39 = GPUQuerySet4.type
    const string40 = GPUQuerySet4.count
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray7);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline1.bindGroup",
        layout: GPUComputePipeline1.getBindGroupLayout(0),
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
    const GPUTexture10 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "bgra8unorm",
        label: "GPUTexture10",
        size: {
            width: 2225,
            height: 1777,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView11 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.805003091442611,
                g: 0.9946433205387133,
                b: 1.2003331916398816,
                a: 0.9943522754738325
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 84996946,
        occlusionQuerySet: GPUQuerySet2
    });
    GPURenderPassEncoder7.end();
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUBindGroupLayout4 = GPUComputePipeline2.getBindGroupLayout(0);
    const string41 = GPUQuerySet1.label
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 156807656,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture11",
        size: {
            width: 632,
            height: 179,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView12 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView12"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0752327160558974,
                g: 1.744319833740899,
                b: 1.5924213486293552,
                a: 1.8531688672399933
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView12,
            depthSlice: 5
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 4239817173,
        occlusionQuerySet: GPUQuerySet0
    });
    GPURenderPassEncoder8.end();
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder7.dispatchWorkgroups(223, 54, 25);
    const GPUShaderModule6 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const GPUCommandEncoder12 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    const string42 = GPUCommandEncoder12.label
    GPUQueue3.submit([GPUCommandBuffer1]);
    const GPUTextureView13 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView13"
    });
    const string43 = GPUQuerySet5.label
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture12",
        size: {
            width: 108,
            height: 101,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView14 = GPUTexture12.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView14"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.22880766975287536,
                g: 1.446229165706591,
                b: 0.4654973111046694,
                a: 0.5257604165361558
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView14
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 3654049883,
        occlusionQuerySet: GPUQuerySet3
    });
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
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder9.draw(7);
    const string44 = GPUQuerySet5.type
    const GPUSupportedLimits12 = GPUDevice0.limits
    const string45 = GPUComputePipeline1.label
    const string46 = GPUComputePassEncoder7.label
    const string47 = GPUQuerySet4.count
    const string48 = GPUTextureView10.label
    const boolean5 = GPUAdapter2.isFallbackAdapter
    const GPUAdapterInfo4 = GPUAdapter6.info
    const string49 = GPUDevice0.label
    const string50 = GPUTextureView4.label
    const GPUSupportedLimits13 = GPUDevice0.limits
    const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule4
        }
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 399,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPUSupportedFeatures12 = GPUAdapter4.features
    const GPUShaderModule7 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader7
    });
    const GPUSupportedFeatures13 = GPUDevice0.features
    const string51 = GPUComputePassEncoder7.label
    GPUComputePassEncoder9.end();
    const string52 = GPUDevice0.label
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: true,
        size: 220814428,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC
    });
    const string53 = GPUQueue4.label
    const GPUCommandBuffer6 = GPUCommandEncoder9.finish();
    const string54 = GPURenderPipeline6.label
    const string55 = GPUComputePassEncoder7.label
    const GPUAdapterInfo5 = GPUAdapter3.info
    const string56 = GPUQuerySet0.count
    const GPUComputePassEncoder10 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    const string57 = GPUDevice0.label
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline3);
    const GPUSupportedFeatures14 = GPUDevice0.features
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
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
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline9",
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
            module: GPUShaderModule2
        }
    });
    GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray8);
    const GPUBindGroup5 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder7.setPipeline(GPUComputePipeline2);
    GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder7.dispatchWorkgroups(212, 27, 55);
    const string58 = GPUDevice0.label
    const GPUQueue7 = GPUDevice0.queue
    GPURenderPassEncoder9.setPipeline(GPURenderPipeline7);
    GPURenderPassEncoder9.end();
    const GPUTexture13 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16uint",
        label: "GPUTexture13",
        size: {
            width: 2764,
            height: 1070,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r16uint"]
    });
    const string59 = GPUQuerySet1.label
    GPUComputePassEncoder10.end();
    const string60 = GPUQuerySet1.count
    GPUComputePassEncoder7.end();
    const GPUSupportedLimits14 = GPUAdapter4.limits
    const GPUComputePassEncoder11 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline2);
    const string61 = GPUQuerySet6.label
    const GPUShaderModule8 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader8
    });
    const GPUSupportedFeatures15 = GPUAdapter0.features
    const GPUSupportedLimits15 = GPUAdapter3.limits
    const string62 = GPUQueue3.label
    const GPUBindGroupLayout5 = GPUComputePipeline5.getBindGroupLayout(0);
    const string63 = GPUQueue5.label
    const string64 = GPUTextureView11.label
    const string65 = GPUQuerySet2.type
    const GPUTextureView15 = GPUTexture5.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView15"
    });
    GPUQueue0.writeBuffer(GPUBuffer1, 0, typedArray9);
    const GPUBuffer6 = GPUDevice0.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: true,
        size: 51507856,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    const GPUTexture14 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "GPUTexture14",
        size: {
            width: 2554,
            height: 1236,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTexture15 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r32sint",
        label: "GPUTexture15",
        size: {
            width: 1965,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32sint"]
    });
    GPUQueue3.writeBuffer(GPUBuffer0, 12, typedArray10);
    const GPUBindGroupLayout6 = GPUComputePipeline0.getBindGroupLayout(0);
    const string66 = GPURenderPipeline3.label
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline4);
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const string67 = GPUCommandEncoder13.label
    const GPUAdapterInfo6 = GPUAdapter4.info
    const string68 = GPUCommandEncoder8.label
    GPUQueue6.writeBuffer(GPUBuffer0, 16, typedArray11);
    const GPUTexture16 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture16",
        size: {
            width: 2991,
            height: 2701,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView16 = GPUTexture16.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView16"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2786149245899545,
                g: 1.566836727231586,
                b: 0.29166333603843797,
                a: 0.037732253661031834
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView16
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 612212045,
        occlusionQuerySet: GPUQuerySet5
    });
    const GPUAdapterInfo7 = GPUAdapter0.info
    const GPURenderPipeline10 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "dst"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder10.end();
    const boolean6 = GPUAdapter0.isFallbackAdapter
    const GPUQueue8 = GPUDevice0.queue
    const boolean7 = GPUAdapter1.isFallbackAdapter
    const GPUSupportedLimits16 = GPUDevice0.limits
    const string69 = GPUQuerySet3.type
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline1);
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture17",
        size: {
            width: 1785,
            height: 1346,
            depthOrArrayLayers: 48
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView17 = GPUTexture17.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView17"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder7.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.6051581326268356,
                g: 0.4515546917922586,
                b: 1.3693827031230172,
                a: 1.4628170315890714
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView17
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 2782452194,
        occlusionQuerySet: GPUQuerySet1
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer2);
    const string70 = GPURenderPassEncoder11.label
    const string71 = GPUCommandEncoder5.label
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder11.dispatchWorkgroups(69, 72, 52);
    const boolean8 = GPUAdapter4.isFallbackAdapter
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: false,
        size: 224012132,
        usage: GPUBufferUsage.VERTEX
    });
    GPUQueue2.writeBuffer(GPUBuffer0, 12, typedArray12);
    const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "dst-alpha",
                        srcFactor: "src"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline11",
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
            module: GPUShaderModule7
        }
    });
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline11);
    const string72 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures16 = GPUDevice0.features
    const GPURenderPipeline12 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "zero",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.BLUE
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
            module: GPUShaderModule2
        }
    });
    const GPURenderPipeline13 = GPUDevice0.createRenderPipeline({
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
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule8
        }
    });
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader10
    });
    const GPUSupportedFeatures17 = GPUDevice0.features
    GPUQueue1.submit([GPUCommandBuffer6]);
    const string73 = GPUTextureView4.label
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup6 = GPUDevice0.createBindGroup({
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
    const GPUTexture18 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture18",
        size: {
            width: 1,
            height: 647,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView18 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView18"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8392273453411956,
                g: 0.30313962549329565,
                b: 1.6597915439324025,
                a: 0.8703994566805997
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView18,
            depthSlice: 24
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 51186847,
        occlusionQuerySet: GPUQuerySet6
    });
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUComputePassEncoder12 = GPUCommandEncoder10.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const string74 = GPUTextureView10.label
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    const GPUTexture19 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8sint",
        label: "GPUTexture19",
        size: {
            width: 3608,
            height: 2680,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8sint"]
    });
    GPUComputePassEncoder12.end();
    const GPUCommandBuffer7 = GPUCommandEncoder10.finish();
    const string75 = GPURenderPipeline9.label
    const GPUSupportedLimits17 = GPUDevice0.limits
    const string76 = GPUTextureView17.label
    GPUQueue2.submit([GPUCommandBuffer7]);
    const GPUCommandBuffer8 = GPUCommandEncoder8.finish();
    const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const string77 = GPURenderPipeline6.label
    const boolean9 = GPUAdapter0.isFallbackAdapter
    const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPURenderPipeline14 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN
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
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline14);
    GPUComputePassEncoder11.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline5);
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
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 230,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const string78 = GPUQuerySet3.type
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg11b10ufloat",
        label: "GPUTexture20",
        size: {
            width: 505,
            height: 962,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg11b10ufloat"]
    });
    GPUComputePassEncoder11.end();
    const GPUComputePassEncoder13 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUSupportedLimits18 = GPUAdapter1.limits
    GPUQueue3.writeBuffer(GPUBuffer1, 20, typedArray14);
    GPUQueue0.writeBuffer(GPUBuffer0, 28, typedArray15);
    GPUComputePassEncoder13.end();
    const string79 = GPUCommandEncoder5.label
    GPURenderPassEncoder12.end();
    const GPUComputePassEncoder14 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup1);
    const GPUSupportedFeatures18 = GPUAdapter4.features
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUTextureView19 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView19"
    });
    const string80 = GPUTextureView8.label
    const string81 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedFeatures19 = GPUAdapter2.features
    const GPUSupportedLimits19 = GPUDevice0.limits
    const GPUSupportedFeatures20 = GPUAdapter6.features
    const string82 = GPUDevice0.label
    const GPUTexture21 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture21",
        size: {
            width: 1328,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    GPUComputePassEncoder14.end();
    const string83 = GPUQuerySet0.type
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQuerySet8 = GPUDevice0.createQuerySet({
        count: 1446,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "GPUTexture22",
        size: {
            width: 717,
            height: 52,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView20 = GPUTexture22.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView20"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder16.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.69516394255394,
                g: 0.03267415675998042,
                b: 1.345308836052338,
                a: 1.1095406082009895
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView20,
            depthSlice: 7
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 176094073,
        occlusionQuerySet: GPUQuerySet4
    });
    const GPUComputePassEncoder15 = GPUCommandEncoder13.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline5);
    const GPUTexture23 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16float",
        label: "GPUTexture23",
        size: {
            width: 3272,
            height: 470,
            depthOrArrayLayers: 23
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const GPUTextureView21 = GPUTexture23.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rgba16float",
        label: "GPUTextureView21"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder15.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1341957943329757,
                g: 0.016104268877583205,
                b: 1.8993047122204918,
                a: 1.511716149584271
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView21
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 3725276855,
        occlusionQuerySet: GPUQuerySet1
    });
    const string84 = GPUComputePassEncoder15.label
    const string85 = GPURenderPipeline0.label
    const string86 = await navigator.gpu.getPreferredCanvasFormat();
    const string87 = GPUComputePipeline4.label
    const GPUTextureView22 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView22"
    });
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup6);
    const GPUTexture24 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r16float",
        label: "GPUTexture24",
        size: {
            width: 3466,
            height: 1822,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUQuerySet9 = GPUDevice0.createQuerySet({
        count: 3955,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline4);
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder15.dispatchWorkgroups(94, 236, 39);
    const string88 = GPUQuerySet6.label
    const GPUSupportedFeatures21 = GPUDevice0.features
    GPURenderPassEncoder11.setPipeline(GPURenderPipeline11);
    const GPUSupportedLimits20 = GPUAdapter7.limits
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPURenderPipeline15 = GPUDevice0.createRenderPipeline({
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
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline15",
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
    const string89 = await navigator.gpu.getPreferredCanvasFormat();
    const string90 = GPUQueue0.label
    GPUQueue8.writeBuffer(GPUBuffer2, 51395336, typedArray16);
    GPUQueue0.writeBuffer(GPUBuffer0, 16, typedArray17);
    const GPUSupportedFeatures22 = GPUAdapter4.features
    GPUComputePassEncoder15.end();
    const string91 = await navigator.gpu.getPreferredCanvasFormat();
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    const string92 = GPUQueue0.label
    const GPUCommandEncoder18 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUComputePassEncoder16 = GPUCommandEncoder5.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    GPUQueue6.writeBuffer(GPUBuffer2, 57999808, typedArray18);
    const GPURenderPipeline16 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline16",
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
            module: GPUShaderModule10
        }
    });
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    const GPUAdapterInfo8 = GPUAdapter7.info
    const GPUTexture25 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8sint",
        label: "GPUTexture25",
        size: {
            width: 3294,
            height: 2193,
            depthOrArrayLayers: 42
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8sint"]
    });
    const GPUTexture26 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture26",
        size: {
            width: 24,
            height: 237,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const string93 = GPUDevice0.label
    const string94 = GPUComputePipeline2.label
    const string95 = GPUQueue1.label
    const string96 = GPUQuerySet8.type
    const string97 = GPUComputePipeline4.label
    const GPUAdapterInfo9 = GPUAdapter4.info
    const GPUCommandBuffer9 = GPUCommandEncoder12.finish();
    const GPUCommandBuffer10 = GPUCommandEncoder14.finish();
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer7);
    const string98 = GPUQuerySet2.count
    const string99 = GPUQuerySet9.label
    const string100 = GPUQuerySet0.label
    GPUComputePassEncoder16.end();
    GPUQueue0.submit([GPUCommandBuffer8]);
    GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray19);
    const GPUBindGroup7 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline9.bindGroup",
        layout: GPUComputePipeline9.getBindGroupLayout(0),
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
    const string101 = GPUTextureView1.label
    const GPUSupportedLimits21 = GPUDevice0.limits
    const GPUComputePassEncoder17 = GPUCommandEncoder17.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline0);
    const string102 = await navigator.gpu.getPreferredCanvasFormat();
    const GPURenderPipeline17 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline17",
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
            module: GPUShaderModule10
        }
    });
    const string103 = GPUQuerySet6.type
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer2);
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPURenderPipeline18 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "src"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline18",
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
            module: GPUShaderModule4
        }
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline18);
    const GPUShaderModule11 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader11
    });
    GPURenderPassEncoder14.draw(1);
    const GPUAdapterInfo10 = GPUAdapter7.info
    const string104 = GPURenderPassEncoder11.label
    const string105 = GPURenderPipeline13.label
    const GPUSupportedLimits22 = GPUAdapter2.limits
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline3);
    GPURenderPassEncoder11.draw(5);
    GPUQueue1.writeBuffer(GPUBuffer1, 16, typedArray20);
    const string106 = GPUQuerySet6.count
    GPURenderPassEncoder14.draw(5);
    GPUComputePassEncoder17.end();
    const GPUCommandBuffer11 = GPUCommandEncoder17.finish();
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule3
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    GPUQueue5.submit([GPUCommandBuffer10]);
    const GPUComputePassEncoder18 = GPUCommandEncoder18.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    GPUComputePassEncoder18.end();
    const GPURenderPipeline19 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline19",
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
            module: GPUShaderModule5
        }
    });
    const GPUShaderModule12 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader12
    });
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const string107 = GPURenderPassEncoder13.label
    const GPUTexture27 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "GPUTexture27",
        size: {
            width: 538,
            height: 671,
            depthOrArrayLayers: 50
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView23 = GPUTexture27.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView23"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1350559331689933,
                g: 0.7849954562810195,
                b: 0.29084344782640015,
                a: 0.9139250924091584
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView23,
            depthSlice: 2
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 2217430953,
        occlusionQuerySet: GPUQuerySet5
    });
    const GPUBindGroupLayout7 = GPUComputePipeline4.getBindGroupLayout(0);
    const string108 = GPUTextureView17.label
    GPURenderPassEncoder15.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder15.draw(2);
    const string109 = GPUQuerySet4.type
    const string110 = GPURenderPassEncoder13.label
    GPURenderPassEncoder14.draw(5);
    const string111 = GPURenderPassEncoder14.label
    const GPUQueue9 = GPUDevice0.queue
    const string112 = GPUCommandEncoder18.label
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline18);
    const string113 = GPUQuerySet5.label
    const string114 = GPUDevice0.label
    GPUQueue9.writeBuffer(GPUBuffer0, 0, typedArray21);
    const GPUBindGroup8 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline9.bindGroup",
        layout: GPUComputePipeline9.getBindGroupLayout(0),
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
    const string115 = GPUDevice0.label
    const GPUComputePassEncoder19 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder19"
    });
    const string116 = GPUComputePassEncoder19.label
    const GPUAdapterInfo11 = GPUAdapter1.info
    const string117 = await navigator.gpu.getPreferredCanvasFormat();
    const string118 = GPUComputePassEncoder19.label
    GPURenderPassEncoder14.end();
    const GPUCommandBuffer12 = GPUCommandEncoder15.finish();
    GPUComputePassEncoder19.setPipeline(GPUComputePipeline1);
    const string119 = GPUComputePassEncoder19.label
    const string120 = GPUTextureView20.label
    const GPUTexture28 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm-srgb",
        label: "GPUTexture28",
        size: {
            width: 1823,
            height: 2919,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const GPUTextureView24 = GPUTexture28.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "GPUTextureView24"
    });
    const GPURenderPassEncoder16 = GPUCommandEncoder13.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.0986912753127842,
                g: 0.10274175760865867,
                b: 0.02812421438574675,
                a: 1.6462765865217597
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder16",
        maxDrawCount: 2670748044,
        occlusionQuerySet: GPUQuerySet2
    });
    GPUComputePassEncoder19.end();
    const GPUSupportedFeatures23 = GPUAdapter5.features
    const boolean10 = GPUAdapter3.isFallbackAdapter
    GPUQueue8.submit([GPUCommandBuffer11]);
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const GPUTextureView25 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView25"
    });
    const GPUTexture29 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture29",
        size: {
            width: 2088,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r32uint"]
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer7);
    const string121 = GPUQuerySet2.count
    const GPUSupportedFeatures24 = GPUAdapter4.features
    GPURenderPassEncoder13.end();
    const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    const GPUCommandBuffer13 = GPUCommandEncoder18.finish();
    const string122 = GPUTextureView18.label
    const string123 = GPUDevice0.label
    const string124 = GPUCommandEncoder11.label
    const string125 = GPURenderPassEncoder11.label
    const string126 = GPUQuerySet1.label
    const string127 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUSupportedLimits23 = GPUAdapter8.limits
    const GPUShaderModule14 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader14
    });
    const GPUSupportedFeatures25 = GPUAdapter1.features
    const GPUComputePassEncoder20 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder20"
    });
    GPUComputePassEncoder20.setPipeline(GPUComputePipeline9);
    GPUQueue9.submit([GPUCommandBuffer9]);
    const GPUAdapterInfo12 = GPUAdapter7.info
    GPURenderPassEncoder16.end();
    const GPUCommandBuffer14 = GPUCommandEncoder13.finish();
    const GPURenderPipeline20 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule9,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-constant",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED
            }]
        },
        label: "GPURenderPipeline20",
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
    const string128 = GPUTextureView3.label
    GPUComputePassEncoder20.setPipeline(GPUComputePipeline8);
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray22);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder20.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder20.dispatchWorkgroups(89, 110, 57);
    const string129 = GPUComputePassEncoder20.label
    const GPUQueue10 = GPUDevice0.queue
    const GPUBindGroupLayout8 = GPUComputePipeline3.getBindGroupLayout(0);
    const string130 = GPUTextureView2.label
    const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string131 = GPURenderPipeline15.label
    const GPUAdapterInfo13 = GPUAdapter4.info
    const string132 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture30 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "GPUTexture30",
        size: {
            width: 315,
            height: 219,
            depthOrArrayLayers: 26
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba32sint"]
    });
    GPUComputePassEncoder20.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder20.setPipeline(GPUComputePipeline0);
    GPUComputePassEncoder20.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder20.dispatchWorkgroups(241, 194, 41);
    const GPUAdapterInfo14 = GPUAdapter3.info
    GPUComputePassEncoder20.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder20.setPipeline(GPUComputePipeline4);
    const string133 = GPUTextureView1.label
    const string134 = GPUQueue10.label
    GPUComputePassEncoder20.setBindGroup(0, GPUBindGroup3);
    GPUComputePassEncoder20.setPipeline(GPUComputePipeline3);
    const GPUAdapterInfo15 = GPUAdapter7.info
    GPUComputePassEncoder20.end();
    const GPUTexture31 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8uint",
        label: "GPUTexture31",
        size: {
            width: 255,
            height: 4,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8uint"]
    });
    const string135 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQuerySet10 = GPUDevice0.createQuerySet({
        count: 2801,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const string136 = GPURenderPassEncoder11.label

}
main().catch(console.error);