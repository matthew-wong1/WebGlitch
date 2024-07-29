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
// Seed: -831371827473936392
const shader24 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray35 = new Int8Array([4043, 1655, -2972, -6903, -4991, -7907, 70, -6298, 9058, 189, 4394, -4531, -3661, -2565, 1611, -552, 2851, 5032, 4952, 7572, -9549, -5435, 9537, -4500, -7906, 3361, -1299, -7342, 8609, 9680, 3510, 2096])
const typedArray34 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader23 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader22 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray33 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray32 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray31 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray30 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray29 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray28 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray27 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray26 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray25 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader21 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray24 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray23 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader20 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const shader19 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader18 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray22 = new Uint8Array([2667, 876, 4501, -8264, 5089, -2266, 4764, -5820, -1377, -8013, 6930, -9408, -4609, 5858, -3990, 3291, 6360, 2507, -5427, -7974])
const typedArray21 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray20 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader17 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray19 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader16 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray18 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray17 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader15 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const shader14 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray16 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray15 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray14 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray13 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader13 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader12 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray12 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray11 = new Float32Array([9750, 3152, 5321, 7884, -7198, 5850, -3035, -6462, 470, -492, -8959, -1843, 5478, -318, 5338, 9174, -6330, 6822, -4933, -7602, 8996, 5295, 5141, -1038, 2069, -6194, -3309, 3052, 8900, 1849, -9014, 2314, -3049, 1633, 6408, -1611, -3440, -2742, 1419, -6499, -4595, 6170, -8033, 9310, 8775, 2589, -6426, -4162, 5236, 4544, 7865, -2841, -7, 9641, -9758, -2355, -9035, -6724, -3604, 5393, 4925, -4358, 910, -7651, -1911, -6762, 7904, 5769, -5963, 3925, 2038, 2349, 1386, 8255, 8581, 3348, 3342, -5509, 4231, 3040, -5521, -8620, -2100, 181, 9734, 9938, 9891, 6592, -2373, -2961, -4134, -2935, 7584, -1071, 2465, -3006, -3271, -8496, -253, -8073, 7904, -1490, -5234, 9126, -8607, 3128, -3303, -257, 4922, -5237, 6195, -2251, 8704, 4338, 5304, -1643, 2797, -6953, 2497, -295, -8415, -4244, -2815, 8489, 9869, -3339, 5408, 1412, -4529, 7930, 7788, 3881, 7769, -2370, 1662, -4585, -4513, 4323, -8269, 1994, -2140, -7145, -4297, 728, 923, -1826, 5556, -1666, -8481, -5967, 237, 2053, -7995])
const shader11 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray10 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray9 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader10 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray8 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader9 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader8 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray7 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader7 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const shader6 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader5 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray6 = new Float32Array([-1834, 6321, 1362, 8908, -95])
const shader4 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray5 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray4 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray3 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader3 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const shader2 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('/home/matthew/final_project/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray1 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
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
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline0);
    const GPUComputePipeline1 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline1",
        layout: "auto"
    });
    const GPUBuffer0 = GPUDevice0.createBuffer({
        label: "GPUBuffer0",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer1 = GPUDevice0.createBuffer({
        label: "GPUBuffer1",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX
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
    GPUComputePassEncoder0.dispatchWorkgroups(218, 105, 15);
    const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline2",
        layout: "auto"
    });
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup0);
    GPUComputePassEncoder0.setPipeline(GPUComputePipeline2);
    const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline3",
        layout: "auto"
    });
    const GPUQueue1 = GPUDevice0.queue
    GPUQueue1.writeBuffer(GPUBuffer0, 0, typedArray1);
    const GPUBindGroup1 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder0.setBindGroup(0, GPUBindGroup1);
    GPUComputePassEncoder0.dispatchWorkgroups(123, 203, 1);
    const string0 = GPUDevice0.label
    const GPUCommandEncoder1 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture0 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture0",
        size: {
            width: 2743,
            height: 935,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = GPUDevice0.createQuerySet({
        count: 972,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const GPURenderPassEncoder0 = GPUCommandEncoder1.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7558688041548418,
                g: 0.943207567997028,
                b: 0.8440066186931368,
                a: 0.45242452395054333
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 2292040782,
        occlusionQuerySet: GPUQuerySet0
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
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline0",
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
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder0.setPipeline(GPURenderPipeline0);
    GPURenderPassEncoder0.draw(8);
    GPURenderPassEncoder0.end();
    const GPUQuerySet1 = GPUDevice0.createQuerySet({
        count: 3645,
        label: "GPUQuerySet1",
        type: "occlusion"
    });
    GPUComputePassEncoder0.end();
    const GPUBuffer2 = GPUDevice0.createBuffer({
        label: "GPUBuffer2",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder0.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer2, 0, 64);
    const GPUSupportedLimits0 = GPUAdapter0.limits
    const string1 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandBuffer0 = GPUCommandEncoder0.finish();
    GPUQueue0.submit([GPUCommandBuffer0]);
    await GPUBuffer2.mapAsync(GPUMapMode.READ);
    const ArrayBuffer0 = GPUBuffer2.getMappedRange();
    const ComputePassResultBuffer0 = ArrayBuffer0.slice(0)
    const typedArray2 = new Uint8Array(ComputePassResultBuffer0)
    console.log("GPUComputePipeline2:", ...typedArray2);
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 1399,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline4",
        layout: "auto"
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline4);
    const GPUBuffer3 = GPUDevice0.createBuffer({
        label: "GPUBuffer3",
        mappedAtCreation: false,
        size: 86680452,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer3.mapAsync(GPUMapMode.READ);
    const GPUSupportedFeatures0 = GPUDevice0.features
    const string2 = GPUQueue1.label
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
    });
    const GPUTexture1 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture1",
        size: {
            width: 1272,
            height: 1992,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView1 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView1"
    });
    const GPUQuerySet3 = GPUDevice0.createQuerySet({
        count: 1225,
        label: "GPUQuerySet3",
        type: "occlusion"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.6481660731292922,
                g: 0.9775020484163673,
                b: 0.13849862288878123,
                a: 0.12352850939976379
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView1
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 1802377901,
        occlusionQuerySet: GPUQuerySet3
    });
    const GPURenderPipeline1 = GPUDevice0.createRenderPipeline({
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
                        dstFactor: "one-minus-src",
                        srcFactor: "constant"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline1);
    GPURenderPassEncoder1.draw(6);
    const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline5",
        layout: "auto"
    });
    const string3 = GPUTextureView1.label
    const GPUShaderModule3 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader3
    });
    const GPUSupportedFeatures1 = GPUAdapter0.features
    const string4 = GPUQuerySet0.label
    const string5 = GPUTextureView1.label
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.RED
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
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    const string6 = GPUQueue0.label
    const GPUAdapterInfo0 = GPUAdapter0.info
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUBuffer4 = GPUDevice0.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: false,
        size: 150024588,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE
    });
    const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder4"
    });
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture2",
        size: {
            width: 668,
            height: 375,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8unorm"]
    });
    const string7 = GPUCommandEncoder2.label
    const string8 = GPUComputePassEncoder1.label
    const boolean0 = GPUAdapter0.isFallbackAdapter
    const string9 = GPURenderPassEncoder1.label
    const string10 = GPUCommandEncoder1.label
    const GPUTexture3 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "GPUTexture3",
        size: {
            width: 804,
            height: 789,
            depthOrArrayLayers: 60
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32sint"]
    });
    const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline6",
        layout: "auto"
    });
    GPUComputePassEncoder1.setPipeline(GPUComputePipeline6);
    const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline7",
        layout: "auto"
    });
    const GPUQueue2 = GPUDevice0.queue
    GPUQueue2.writeBuffer(GPUBuffer0, 0, typedArray3);
    const GPUBindGroup2 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder1.setBindGroup(0, GPUBindGroup2);
    GPUComputePassEncoder1.dispatchWorkgroups(236, 11, 4);
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    GPUComputePassEncoder1.end();
    const GPUBuffer5 = GPUDevice0.createBuffer({
        label: "GPUBuffer5",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder1.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer5, 0, 64);
    const GPUSupportedLimits2 = GPUDevice0.limits
    const GPUTextureView2 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView2"
    });
    GPUCommandEncoder1.copyBufferToBuffer(GPUBuffer1, 44, GPUBuffer0, 4, 0);
    const string11 = GPUBuffer3.label
    const GPUComputePassEncoder2 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder2"
    });
    const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline8",
        layout: "auto"
    });
    const GPUQueue3 = GPUDevice0.queue
    GPUQueue3.writeBuffer(GPUBuffer0, 0, typedArray4);
    const GPUBindGroup3 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup3);
    const GPUAdapter1 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUDevice1 = await GPUAdapter1.requestDevice();
    const GPUBuffer6 = GPUDevice1.createBuffer({
        label: "GPUBuffer6",
        mappedAtCreation: false,
        size: 95153296,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer6.mapAsync(GPUMapMode.READ);
    GPURenderPassEncoder1.end();
    const GPUCommandBuffer1 = GPUCommandEncoder2.finish();
    GPUQueue1.submit([GPUCommandBuffer1]);
    const GPUAdapter2 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUAdapter3 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GPUComputePassEncoder2.end();
    const GPUAdapter4 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string12 = GPUQuerySet2.label
    const GPUComputePassEncoder3 = GPUCommandEncoder1.beginComputePass({
        label: "GPUComputePassEncoder3"
    });
    const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline9",
        layout: "auto"
    });
    GPUComputePassEncoder3.setPipeline(GPUComputePipeline9);
    const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline10",
        layout: "auto"
    });
    const GPUQueue4 = GPUDevice0.queue
    GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray5);
    const GPUBindGroup4 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup4);
    GPUComputePassEncoder3.dispatchWorkgroups(71, 179, 21);
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup4);
    const GPUTexture4 = GPUDevice0.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture4",
        size: {
            width: 3880,
            height: 2284,
            depthOrArrayLayers: 14
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUTextureView3 = GPUTexture4.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "r16float",
        label: "GPUTextureView3"
    });
    const GPUQuerySet4 = GPUDevice0.createQuerySet({
        count: 1741,
        label: "GPUQuerySet4",
        type: "occlusion"
    });
    const GPURenderPassEncoder2 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.043154615407102304,
                g: 0.9982372122751656,
                b: 0.04138347359819383,
                a: 0.8495718172316259
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView3
        }],
        label: "GPURenderPassEncoder2",
        maxDrawCount: 1035274286,
        occlusionQuerySet: GPUQuerySet4
    });
    GPURenderPassEncoder2.end();
    GPUBuffer3.unmap();
    const GPUTextureView4 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 0,
        format: "rgba32sint",
        label: "GPUTextureView4"
    });
    const GPUCommandBuffer2 = GPUCommandEncoder4.finish();
    GPUCommandEncoder3.copyBufferToBuffer(GPUBuffer1, 64, GPUBuffer2, 4, 0);
    const GPUSupportedLimits3 = GPUAdapter0.limits
    const GPUTexture5 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture5",
        size: {
            width: 626,
            height: 476,
            depthOrArrayLayers: 46
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView5 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "GPUTextureView5"
    });
    const GPUQuerySet5 = GPUDevice0.createQuerySet({
        count: 2705,
        label: "GPUQuerySet5",
        type: "occlusion"
    });
    const GPURenderPassEncoder3 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7664690270232205,
                g: 0.7783079879614381,
                b: 0.7187356752088525,
                a: 0.09357215065237678
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView5,
            depthSlice: 15
        }],
        label: "GPURenderPassEncoder3",
        maxDrawCount: 3929558762,
        occlusionQuerySet: GPUQuerySet5
    });
    GPUComputePassEncoder3.setBindGroup(0, GPUBindGroup4);
    const string13 = GPUCommandEncoder3.label
    const string14 = GPUTextureView0.label
    const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder5"
    });
    const GPUBuffer7 = GPUDevice0.createBuffer({
        label: "GPUBuffer7",
        mappedAtCreation: true,
        size: 265327848,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const GPUSupportedFeatures2 = GPUAdapter3.features
    const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    const GPUDevice2 = await GPUAdapter2.requestDevice();
    const GPUBuffer8 = GPUDevice1.createBuffer({
        label: "GPUBuffer8",
        mappedAtCreation: false,
        size: 124950748,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer8.mapAsync(GPUMapMode.READ);
    const GPUSupportedLimits4 = GPUAdapter3.limits
    const GPUBindGroupLayout1 = GPUComputePipeline6.getBindGroupLayout(0);
    const string15 = GPUComputePipeline6.label
    const string16 = GPURenderPassEncoder3.label
    const GPUTexture6 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture6",
        size: {
            width: 280,
            height: 117,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView6 = GPUTexture6.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView6"
    });
    const GPUQuerySet6 = GPUDevice0.createQuerySet({
        count: 275,
        label: "GPUQuerySet6",
        type: "occlusion"
    });
    const GPURenderPassEncoder4 = GPUCommandEncoder5.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5112738205099413,
                g: 0.10656382855459112,
                b: 0.8480346004271769,
                a: 0.6872581262968339
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView6,
            depthSlice: 7
        }],
        label: "GPURenderPassEncoder4",
        maxDrawCount: 2960189931,
        occlusionQuerySet: GPUQuerySet6
    });
    const GPUCommandEncoder6 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder6"
    });
    const GPUBuffer9 = GPUDevice2.createBuffer({
        label: "GPUBuffer9",
        mappedAtCreation: false,
        size: 255490232,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
    });
    const GPUBuffer10 = GPUDevice2.createBuffer({
        label: "GPUBuffer10",
        mappedAtCreation: false,
        size: 210156932,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE
    });
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer9, 219059844, GPUBuffer10, 36408472, 1774600);
    const string17 = GPUCommandEncoder5.label
    const GPUSupportedLimits5 = GPUAdapter2.limits
    const GPUQuerySet7 = GPUDevice0.createQuerySet({
        count: 397,
        label: "GPUQuerySet7",
        type: "occlusion"
    });
    const GPUCommandEncoder7 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder7"
    });
    const GPUCommandBuffer3 = GPUCommandEncoder7.finish();
    GPUQueue3.submit([GPUCommandBuffer3]);
    const GPUQueue5 = GPUDevice1.queue
    const GPUBuffer11 = GPUDevice0.createBuffer({
        label: "GPUBuffer11",
        mappedAtCreation: false,
        size: 7320224,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT
    });
    const GPUAdapter5 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUTextureView7 = GPUTexture2.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView7"
    });
    const GPUShaderModule4 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader4
    });
    const GPUComputePipeline11 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline11",
        layout: "auto"
    });
    const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder8"
    });
    const GPUCommandBuffer4 = GPUCommandEncoder8.finish();
    GPUQueue4.submit([GPUCommandBuffer4]);
    GPUComputePassEncoder3.end();
    const GPUBuffer12 = GPUDevice0.createBuffer({
        label: "GPUBuffer12",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder1.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer12, 0, 64);
    const GPUCommandBuffer5 = GPUCommandEncoder1.finish();
    const string18 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUTexture7 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture7",
        size: {
            width: 1920,
            height: 270,
            depthOrArrayLayers: 55
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView8 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 7,
        format: "rg16float",
        label: "GPUTextureView8"
    });
    const GPUQuerySet8 = GPUDevice2.createQuerySet({
        count: 3886,
        label: "GPUQuerySet8",
        type: "occlusion"
    });
    const GPURenderPassEncoder5 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8039170689765455,
                g: 0.40485450876321916,
                b: 0.27197829496483483,
                a: 0.27829717810005394
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView8
        }],
        label: "GPURenderPassEncoder5",
        maxDrawCount: 8901566,
        occlusionQuerySet: GPUQuerySet8
    });
    const string19 = GPUDevice0.label
    const string20 = GPURenderPassEncoder5.label
    GPUQueue1.writeBuffer(GPUBuffer12, 40, typedArray6);
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha-saturated",
                        srcFactor: "zero"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule2
        }
    });
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline3);
    GPURenderPassEncoder3.draw(10);
    const GPUShaderModule5 = GPUDevice2.createShaderModule({
        label: "fragment",
        code: shader5
    });
    const GPUShaderModule6 = GPUDevice2.createShaderModule({
        label: "vertex",
        code: shader6
    });
    const GPURenderPipeline4 = GPUDevice2.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline4",
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
            module: GPUShaderModule6
        }
    });
    const GPUSupportedFeatures3 = GPUAdapter2.features
    GPURenderPassEncoder4.end();
    const GPUCommandBuffer6 = GPUCommandEncoder5.finish();
    const GPUQuerySet9 = GPUDevice2.createQuerySet({
        count: 1898,
        label: "GPUQuerySet9",
        type: "occlusion"
    });
    GPURenderPassEncoder5.end();
    const GPUAdapter6 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUSupportedLimits6 = GPUAdapter5.limits
    const GPUBindGroupLayout2 = GPUComputePipeline2.getBindGroupLayout(0);
    const GPUBindGroupLayout3 = GPUComputePipeline10.getBindGroupLayout(0);
    GPURenderPassEncoder3.setPipeline(GPURenderPipeline3);
    const GPUAdapter7 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    GPURenderPassEncoder3.draw(7);
    GPURenderPassEncoder3.draw(1);
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer9, 17030388, GPUBuffer10, 171291692, 16068728);
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer1);
    const GPUSupportedFeatures4 = GPUAdapter4.features
    const GPUComputePassEncoder4 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder4"
    });
    const GPUShaderModule7 = GPUDevice2.createShaderModule({
        label: "compute",
        code: shader7
    });
    const GPUComputePipeline12 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline12",
        layout: "auto"
    });
    GPUComputePassEncoder4.setPipeline(GPUComputePipeline12);
    const GPUComputePipeline13 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline13",
        layout: "auto"
    });
    const GPUBuffer13 = GPUDevice2.createBuffer({
        label: "GPUBuffer13",
        mappedAtCreation: false,
        size: 48,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    const GPUBuffer14 = GPUDevice2.createBuffer({
        label: "GPUBuffer14",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    const GPUQueue6 = GPUDevice2.queue
    GPUQueue6.writeBuffer(GPUBuffer13, 0, typedArray7);
    const GPUBindGroup5 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline12.bindGroup",
        layout: GPUComputePipeline12.getBindGroupLayout(0),
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
    GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup5);
    GPUComputePassEncoder4.dispatchWorkgroups(169, 124, 49);
    const GPUDevice3 = await GPUAdapter7.requestDevice();
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
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline5",
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
    const GPUShaderModule8 = GPUDevice1.createShaderModule({
        label: "fragment",
        code: shader8
    });
    const GPUCommandEncoder9 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder9"
    });
    const string21 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder4.end();
    const GPUBuffer15 = GPUDevice2.createBuffer({
        label: "GPUBuffer15",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder6.copyBufferToBuffer(GPUBuffer14, 0, GPUBuffer15, 0, 32);
    const string22 = GPUQuerySet6.label
    const GPURenderPipeline6 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline6",
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
            module: GPUShaderModule6
        }
    });
    const GPUQueue7 = GPUDevice0.queue
    GPUBuffer0.unmap();
    const GPUSupportedFeatures5 = GPUAdapter6.features
    const GPUBuffer16 = GPUDevice0.createBuffer({
        label: "GPUBuffer16",
        mappedAtCreation: false,
        size: 137682128,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer16.mapAsync(GPUMapMode.READ);
    const GPUSupportedFeatures6 = GPUAdapter6.features
    const GPUComputePassEncoder5 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder5"
    });
    const GPUComputePipeline14 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline14",
        layout: "auto"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline14);
    const GPUQueue8 = GPUDevice2.queue
    const GPUBuffer17 = GPUDevice2.createBuffer({
        label: "GPUBuffer17",
        mappedAtCreation: false,
        size: 53137656,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer17.mapAsync(GPUMapMode.READ);
    const ArrayBuffer1 = GPUBuffer17.getMappedRange();
    const GPUShaderModule9 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader9
    });
    const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule3,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src",
                        srcFactor: "zero"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline7",
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
            module: GPUShaderModule2
        }
    });
    const string23 = GPUComputePipeline10.label
    const string24 = GPURenderPipeline3.label
    GPURenderPassEncoder3.draw(6);
    const GPUTextureView9 = GPUTexture7.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 2,
        format: "rg16float",
        label: "GPUTextureView9"
    });
    const GPUBuffer18 = GPUDevice1.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: true,
        size: 215471088,
        usage: GPUBufferUsage.COPY_DST
    });
    const string25 = GPUComputePassEncoder5.label
    GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    const GPUDevice4 = await GPUAdapter3.requestDevice();
    GPURenderPassEncoder3.end();
    const GPUComputePipeline15 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline15",
        layout: "auto"
    });
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline15);
    const GPUComputePipeline16 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline16",
        layout: "auto"
    });
    const GPUBuffer19 = GPUDevice1.createBuffer({
        label: "GPUBuffer19",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUBuffer20 = GPUDevice1.createBuffer({
        label: "GPUBuffer20",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    });
    const GPUQueue9 = GPUDevice1.queue
    GPUQueue9.writeBuffer(GPUBuffer19, 0, typedArray8);
    const GPUBindGroup6 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline15.bindGroup",
        layout: GPUComputePipeline15.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder5.dispatchWorkgroups(100, 123, 26);
    const GPUBuffer21 = GPUDevice4.createBuffer({
        label: "GPUBuffer21",
        mappedAtCreation: true,
        size: 41130712,
        usage: GPUBufferUsage.MAP_READ
    });
    const ArrayBuffer2 = GPUBuffer21.getMappedRange();
    const GPUQuerySet10 = GPUDevice4.createQuerySet({
        count: 2939,
        label: "GPUQuerySet10",
        type: "occlusion"
    });
    const GPUTextureView10 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 30,
        baseArrayLayer: 9,
        mipLevelCount: 6,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "GPUTextureView10"
    });
    const GPUAdapterInfo1 = GPUAdapter2.info
    const GPUShaderModule10 = GPUDevice0.createShaderModule({
        label: "compute",
        code: shader10
    });
    const GPUTexture8 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture8",
        size: {
            width: 2853,
            height: 829,
            depthOrArrayLayers: 62
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView11 = GPUTexture8.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView11"
    });
    const GPUQuerySet11 = GPUDevice2.createQuerySet({
        count: 3972,
        label: "GPUQuerySet11",
        type: "occlusion"
    });
    const GPURenderPassEncoder6 = GPUCommandEncoder6.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.8339616438902813,
                g: 0.052698018042038774,
                b: 0.4959423605176253,
                a: 0.6510906479186896
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView11
        }],
        label: "GPURenderPassEncoder6",
        maxDrawCount: 258415707,
        occlusionQuerySet: GPUQuerySet11
    });
    GPURenderPassEncoder6.end();
    const GPUQueue10 = GPUDevice4.queue
    const string26 = GPUQueue0.label
    const GPUComputePipeline17 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline17",
        layout: "auto"
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup6);
    GPUComputePassEncoder5.setPipeline(GPUComputePipeline17);
    const GPUComputePipeline18 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline18",
        layout: "auto"
    });
    const GPUQueue11 = GPUDevice1.queue
    GPUQueue11.writeBuffer(GPUBuffer19, 0, typedArray9);
    const GPUBindGroup7 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline17.bindGroup",
        layout: GPUComputePipeline17.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder5.setBindGroup(0, GPUBindGroup7);
    GPUComputePassEncoder5.dispatchWorkgroups(176, 204, 19);
    GPUComputePassEncoder5.end();
    const GPUBuffer22 = GPUDevice1.createBuffer({
        label: "GPUBuffer22",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder9.copyBufferToBuffer(GPUBuffer20, 0, GPUBuffer22, 0, 64);
    const GPUBuffer23 = GPUDevice2.createBuffer({
        label: "GPUBuffer23",
        mappedAtCreation: false,
        size: 266093016,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer23.mapAsync(GPUMapMode.READ);
    const ArrayBuffer3 = GPUBuffer23.getMappedRange();
    const GPUComputePassEncoder6 = GPUCommandEncoder6.beginComputePass({
        label: "GPUComputePassEncoder6"
    });
    const GPUComputePipeline19 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline19",
        layout: "auto"
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline19);
    const string27 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBuffer24 = GPUDevice2.createBuffer({
        label: "GPUBuffer24",
        mappedAtCreation: true,
        size: 223254620,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX
    });
    const GPUComputePipeline20 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline20",
        layout: "auto"
    });
    const GPUQueue12 = GPUDevice2.queue
    GPUQueue12.writeBuffer(GPUBuffer13, 0, typedArray10);
    const GPUBindGroup8 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline20.bindGroup",
        layout: GPUComputePipeline20.getBindGroupLayout(0),
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
    const GPUSupportedLimits7 = GPUDevice3.limits
    const GPUTextureView12 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 1,
        format: "rg16float",
        label: "GPUTextureView12"
    });
    const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    const GPUQueue13 = GPUDevice4.queue
    const GPUBuffer25 = GPUDevice3.createBuffer({
        label: "GPUBuffer25",
        mappedAtCreation: true,
        size: 149675668,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    const ArrayBuffer4 = GPUBuffer25.getMappedRange();
    const GPUComputePipeline21 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline21",
        layout: "auto"
    });
    GPUComputePassEncoder6.setPipeline(GPUComputePipeline21);
    const GPUBindGroupLayout4 = GPUComputePipeline12.getBindGroupLayout(0);
    const boolean1 = GPUAdapter0.isFallbackAdapter
    const GPUTexture9 = GPUDevice4.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "GPUTexture9",
        size: {
            width: 3185,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8uint"]
    });
    const GPUTexture10 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "GPUTexture10",
        size: {
            width: 2868,
            height: 2723,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView13 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView13"
    });
    const GPUQuerySet12 = GPUDevice1.createQuerySet({
        count: 1555,
        label: "GPUQuerySet12",
        type: "occlusion"
    });
    const GPURenderPassEncoder7 = GPUCommandEncoder9.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.81164931878422,
                g: 0.6941475444497378,
                b: 0.6159398143966388,
                a: 0.3990395048512484
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView13
        }],
        label: "GPURenderPassEncoder7",
        maxDrawCount: 3313388037,
        occlusionQuerySet: GPUQuerySet12
    });
    const GPUShaderModule11 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader11
    });
    const GPURenderPipeline8 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALL
            }]
        },
        label: "GPURenderPipeline8",
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
            module: GPUShaderModule11
        }
    });
    GPURenderPassEncoder7.setPipeline(GPURenderPipeline8);
    GPURenderPassEncoder7.draw(8);
    const GPUSupportedFeatures7 = GPUAdapter3.features
    const GPUTextureView14 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView14"
    });
    const GPUBuffer26 = GPUDevice1.createBuffer({
        label: "GPUBuffer26",
        mappedAtCreation: false,
        size: 40205024,
        usage: GPUBufferUsage.VERTEX
    });
    GPURenderPassEncoder7.setVertexBuffer(0, GPUBuffer26);
    GPUComputePassEncoder6.end();
    const GPUCommandBuffer7 = GPUCommandEncoder6.finish();
    const GPUSupportedFeatures8 = GPUAdapter5.features
    const GPUBuffer27 = GPUDevice1.createBuffer({
        label: "GPUBuffer27",
        mappedAtCreation: false,
        size: 178464580,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer27.mapAsync(GPUMapMode.READ);
    const ArrayBuffer5 = GPUBuffer27.getMappedRange();
    const GPUQueue14 = GPUDevice3.queue
    const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    const string28 = GPUBuffer19.label
    const GPUBuffer28 = GPUDevice1.createBuffer({
        label: "GPUBuffer28",
        mappedAtCreation: false,
        size: 11496032,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer28.mapAsync(GPUMapMode.READ);
    const ArrayBuffer6 = GPUBuffer28.getMappedRange();
    const string29 = GPUTextureView3.label
    GPUCommandEncoder3.copyBufferToBuffer(GPUBuffer11, 2915936, GPUBuffer12, 20, 24);
    const GPUBuffer29 = GPUDevice3.createBuffer({
        label: "GPUBuffer29",
        mappedAtCreation: true,
        size: 89840672,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.STORAGE
    });
    GPUQueue14.writeBuffer(GPUBuffer29, 11415616, typedArray11);
    const GPUBindGroupLayout5 = GPUComputePipeline7.getBindGroupLayout(0);
    const GPUComputePassEncoder7 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder7"
    });
    GPUComputePassEncoder7.end();
    const GPUTexture11 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture11",
        size: {
            width: 248,
            height: 43,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView15 = GPUTexture11.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "bgra8unorm",
        label: "GPUTextureView15"
    });
    const GPUQuerySet13 = GPUDevice0.createQuerySet({
        count: 2439,
        label: "GPUQuerySet13",
        type: "occlusion"
    });
    const GPURenderPassEncoder8 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5061062711504172,
                g: 0.5989544311726175,
                b: 0.5404179143484182,
                a: 0.07860717210980839
            },
            loadOp: "clear",
            storeOp: "store",
            view: GPUTextureView15,
            depthSlice: 1
        }],
        label: "GPURenderPassEncoder8",
        maxDrawCount: 8213557,
        occlusionQuerySet: GPUQuerySet13
    });
    const GPUCommandEncoder10 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder10"
    });
    const GPUTexture12 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "GPUTexture12",
        size: {
            width: 380,
            height: 437,
            depthOrArrayLayers: 52
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg8unorm"]
    });
    const GPUTextureView16 = GPUTexture12.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView16"
    });
    const GPUQuerySet14 = GPUDevice0.createQuerySet({
        count: 3163,
        label: "GPUQuerySet14",
        type: "occlusion"
    });
    const GPURenderPassEncoder9 = GPUCommandEncoder10.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9987396916520623,
                g: 0.1533868631013655,
                b: 0.6820965775172456,
                a: 0.17365598539542404
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView16,
            depthSlice: 45
        }],
        label: "GPURenderPassEncoder9",
        maxDrawCount: 2727997357,
        occlusionQuerySet: GPUQuerySet14
    });
    const string30 = GPUDevice2.label
    const string31 = GPUBuffer15.label
    const GPUCommandEncoder11 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder11"
    });
    const GPUComputePassEncoder8 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder8"
    });
    const GPUComputePipeline22 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline22",
        layout: "auto"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline22);
    const GPUQuerySet15 = GPUDevice2.createQuerySet({
        count: 3958,
        label: "GPUQuerySet15",
        type: "occlusion"
    });
    const GPUBuffer30 = GPUDevice3.createBuffer({
        label: "GPUBuffer30",
        mappedAtCreation: false,
        size: 160472584,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer30.mapAsync(GPUMapMode.READ);
    const ArrayBuffer7 = GPUBuffer30.getMappedRange();
    const GPUSupportedFeatures9 = GPUDevice0.features
    const GPUCommandEncoder12 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder12"
    });
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer20, 44, GPUBuffer22, 0, 8);
    const GPUBuffer31 = GPUDevice2.createBuffer({
        label: "GPUBuffer31",
        mappedAtCreation: true,
        size: 74114264,
        usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    });
    const GPUTextureView17 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView17"
    });
    const GPUSupportedLimits8 = GPUAdapter5.limits
    const GPUTexture13 = GPUDevice3.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8snorm",
        label: "GPUTexture13",
        size: {
            width: 3327,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8snorm"]
    });
    const GPUCommandEncoder13 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder13"
    });
    const GPUCommandBuffer8 = GPUCommandEncoder13.finish();
    GPUQueue3.submit([GPUCommandBuffer8]);
    GPUBuffer31.unmap();
    const GPUComputePipeline23 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline23",
        layout: "auto"
    });
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline23);
    const GPUComputePipeline24 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline24",
        layout: "auto"
    });
    const GPUQueue15 = GPUDevice0.queue
    GPUQueue15.writeBuffer(GPUBuffer0, 0, typedArray12);
    const GPUBindGroup9 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline23.bindGroup",
        layout: GPUComputePipeline23.getBindGroupLayout(0),
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
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder8.dispatchWorkgroups(91, 93, 59);
    const GPUShaderModule12 = GPUDevice3.createShaderModule({
        label: "fragment",
        code: shader12
    });
    GPURenderPassEncoder9.end();
    const GPUSupportedFeatures10 = GPUDevice2.features
    const GPUSupportedFeatures11 = GPUDevice2.features
    const GPUBuffer32 = GPUDevice3.createBuffer({
        label: "GPUBuffer32",
        mappedAtCreation: false,
        size: 143853200,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer32.mapAsync(GPUMapMode.READ);
    const ArrayBuffer8 = GPUBuffer32.getMappedRange();
    const GPUShaderModule13 = GPUDevice0.createShaderModule({
        label: "fragment",
        code: shader13
    });
    const GPUComputePipeline25 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline25",
        layout: "auto"
    });
    GPUComputePassEncoder8.setBindGroup(0, GPUBindGroup9);
    GPUComputePassEncoder8.setPipeline(GPUComputePipeline25);
    const GPUComputePipeline26 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline26",
        layout: "auto"
    });
    const GPUQueue16 = GPUDevice0.queue
    GPUQueue16.writeBuffer(GPUBuffer0, 0, typedArray13);
    const GPUBindGroup10 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline25.bindGroup",
        layout: GPUComputePipeline25.getBindGroupLayout(0),
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
    GPUComputePassEncoder8.dispatchWorkgroups(210, 117, 2);
    const GPUCommandEncoder14 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder14"
    });
    const GPUBuffer33 = GPUDevice3.createBuffer({
        label: "GPUBuffer33",
        mappedAtCreation: false,
        size: 20474164,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer33.mapAsync(GPUMapMode.READ);
    const string32 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder8.end();
    const GPUBuffer34 = GPUDevice0.createBuffer({
        label: "GPUBuffer34",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder11.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer34, 0, 64);
    const GPUCommandBuffer9 = GPUCommandEncoder10.finish();
    GPURenderPassEncoder8.setVertexBuffer(0, GPUBuffer1);
    GPURenderPassEncoder7.end();
    const string33 = GPUQueue15.label
    const GPUComputePassEncoder9 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder9"
    });
    const GPUComputePipeline27 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline27",
        layout: "auto"
    });
    const GPUQueue17 = GPUDevice1.queue
    GPUQueue17.writeBuffer(GPUBuffer19, 0, typedArray14);
    const GPUBindGroup11 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline27.bindGroup",
        layout: GPUComputePipeline27.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup11);
    const GPUComputePipeline28 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline28",
        layout: "auto"
    });
    const GPUTextureView18 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView18"
    });
    const string34 = GPUTextureView5.label
    const GPUCommandEncoder15 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder15"
    });
    const GPUCommandBuffer10 = GPUCommandEncoder15.finish();
    GPUQueue6.submit([GPUCommandBuffer10]);
    GPUBuffer2.unmap();
    const GPUComputePipeline29 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline29",
        layout: "auto"
    });
    const GPUQueue18 = GPUDevice1.queue
    GPUQueue18.writeBuffer(GPUBuffer19, 0, typedArray15);
    const GPUBindGroup12 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline29.bindGroup",
        layout: GPUComputePipeline29.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder9.setBindGroup(0, GPUBindGroup12);
    const string35 = GPUCommandEncoder14.label
    const string36 = GPUBuffer26.label
    const GPUBindGroupLayout6 = GPUComputePipeline16.getBindGroupLayout(0);
    const GPUCommandEncoder16 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder16"
    });
    const GPUQueue19 = GPUDevice2.queue
    const GPUSupportedLimits9 = GPUAdapter5.limits
    const GPUCommandEncoder17 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder17"
    });
    const GPUCommandBuffer11 = GPUCommandEncoder17.finish();
    GPUQueue0.submit([GPUCommandBuffer11]);
    const string37 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue20 = GPUDevice1.queue
    const GPUTextureView19 = GPUTexture5.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 2,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView19"
    });
    GPUComputePassEncoder9.end();
    const GPUBuffer35 = GPUDevice3.createBuffer({
        label: "GPUBuffer35",
        mappedAtCreation: false,
        size: 86803376,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer35.mapAsync(GPUMapMode.READ);
    const GPUComputePassEncoder10 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder10"
    });
    GPUComputePassEncoder10.end();
    const string38 = GPUBuffer10.label
    const boolean2 = GPUAdapter7.isFallbackAdapter
    const string39 = GPUBuffer20.label
    const GPUComputePassEncoder11 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder11"
    });
    const GPUComputePipeline30 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline30",
        layout: "auto"
    });
    GPUComputePassEncoder11.setPipeline(GPUComputePipeline30);
    const GPUBindGroupLayout7 = GPUComputePipeline11.getBindGroupLayout(0);
    GPUComputePassEncoder11.end();
    const GPUComputePassEncoder12 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder12"
    });
    const GPUComputePipeline31 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline31",
        layout: "auto"
    });
    const GPUQueue21 = GPUDevice1.queue
    GPUQueue21.writeBuffer(GPUBuffer19, 0, typedArray16);
    const GPUBindGroup13 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline31.bindGroup",
        layout: GPUComputePipeline31.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup13);
    const string40 = GPURenderPipeline6.label
    const GPUQueue22 = GPUDevice1.queue
    const string41 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUBuffer36 = GPUDevice3.createBuffer({
        label: "GPUBuffer36",
        mappedAtCreation: false,
        size: 196201320,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT
    });
    const GPUShaderModule14 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader14
    });
    const GPUComputePipeline32 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline32",
        layout: "auto"
    });
    GPUComputePassEncoder12.end();
    const string42 = GPUTextureView13.label
    const GPUSupportedFeatures12 = GPUDevice4.features
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer20, 0, GPUBuffer22, 20, 28);
    const GPUAdapter8 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const string43 = GPUQueue1.label
    const string44 = GPURenderPassEncoder8.label
    const GPUCommandEncoder18 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder18"
    });
    const GPUCommandEncoder19 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder19"
    });
    const GPUSupportedFeatures13 = GPUDevice1.features
    const GPUComputePassEncoder13 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder13"
    });
    const GPUComputePipeline33 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline33",
        layout: "auto"
    });
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline33);
    const GPUShaderModule15 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader15
    });
    const GPUComputePipeline34 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule15
        },
        label: "GPUComputePipeline34",
        layout: "auto"
    });
    const GPUQuerySet16 = GPUDevice2.createQuerySet({
        count: 2114,
        label: "GPUQuerySet16",
        type: "occlusion"
    });
    GPUBuffer17.unmap();
    const GPUComputePipeline35 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline35",
        layout: "auto"
    });
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline35);
    const GPUComputePipeline36 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline36",
        layout: "auto"
    });
    const GPUQueue23 = GPUDevice0.queue
    GPUQueue23.writeBuffer(GPUBuffer0, 0, typedArray17);
    const GPUBindGroup14 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline35.bindGroup",
        layout: GPUComputePipeline35.getBindGroupLayout(0),
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
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder13.dispatchWorkgroups(38, 202, 59);
    const GPUCommandEncoder20 = GPUDevice4.createCommandEncoder({
        label: "GPUCommandEncoder20"
    });
    const GPUSupportedLimits10 = GPUDevice1.limits
    const GPUQueue24 = GPUDevice0.queue
    const GPUQueue25 = GPUDevice1.queue
    const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    const string45 = GPUQuerySet10.label
    GPUCommandEncoder14.copyBufferToBuffer(GPUBuffer11, 5194852, GPUBuffer5, 8, 12);
    const GPUComputePipeline37 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline37",
        layout: "auto"
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup14);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline37);
    const GPUComputePipeline38 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline38",
        layout: "auto"
    });
    const GPUQueue26 = GPUDevice0.queue
    GPUQueue26.writeBuffer(GPUBuffer0, 0, typedArray18);
    const GPUBindGroup15 = GPUDevice0.createBindGroup({
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
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder13.dispatchWorkgroups(155, 178, 60);
    const string46 = GPURenderPipeline0.label
    const GPUTexture14 = GPUDevice4.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "GPUTexture14",
        size: {
            width: 597,
            height: 816,
            depthOrArrayLayers: 54
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView20 = GPUTexture14.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView20"
    });
    const GPUQuerySet17 = GPUDevice4.createQuerySet({
        count: 919,
        label: "GPUQuerySet17",
        type: "occlusion"
    });
    const GPURenderPassEncoder10 = GPUCommandEncoder18.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9775677720351507,
                g: 0.00856236574158109,
                b: 0.9416760596776232,
                a: 0.6235106631738185
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView20,
            depthSlice: 7
        }],
        label: "GPURenderPassEncoder10",
        maxDrawCount: 40414465,
        occlusionQuerySet: GPUQuerySet17
    });
    const GPUBuffer37 = GPUDevice3.createBuffer({
        label: "GPUBuffer37",
        mappedAtCreation: false,
        size: 246351620,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer37.mapAsync(GPUMapMode.READ);
    const GPUTextureView21 = GPUTexture1.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "GPUTextureView21"
    });
    const GPUBuffer38 = GPUDevice0.createBuffer({
        label: "GPUBuffer38",
        mappedAtCreation: true,
        size: 106155308,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM
    });
    const GPUTexture15 = GPUDevice2.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r16float",
        label: "GPUTexture15",
        size: {
            width: 2559,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16float"]
    });
    const GPUQueue27 = GPUDevice3.queue
    const GPUAdapter9 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const string47 = GPURenderPipeline3.label
    const GPUCommandBuffer12 = GPUCommandEncoder19.finish();
    const GPUCommandEncoder21 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder21"
    });
    const GPUCommandBuffer13 = GPUCommandEncoder21.finish();
    GPUQueue19.submit([GPUCommandBuffer13]);
    const GPUSupportedFeatures14 = GPUAdapter5.features
    const GPUBuffer39 = GPUDevice3.createBuffer({
        label: "GPUBuffer39",
        mappedAtCreation: false,
        size: 30052736,
        usage: GPUBufferUsage.MAP_READ
    });
    await GPUBuffer39.mapAsync(GPUMapMode.READ);
    const ArrayBuffer9 = GPUBuffer39.getMappedRange();
    GPUBuffer18.unmap();
    const GPUQueue28 = GPUDevice2.queue
    const GPUTextureView22 = GPUTexture10.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm",
        label: "GPUTextureView22"
    });
    const GPUCommandEncoder22 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder22"
    });
    const GPUCommandBuffer14 = GPUCommandEncoder22.finish();
    GPUQueue2.submit([GPUCommandBuffer14]);
    const GPUAdapter10 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePipeline39 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline39",
        layout: "auto"
    });
    GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup15);
    GPUComputePassEncoder13.setPipeline(GPUComputePipeline39);
    const GPUCommandBuffer15 = GPUCommandEncoder16.finish();
    const GPUSupportedFeatures15 = GPUAdapter6.features
    const GPUSupportedFeatures16 = GPUDevice2.features
    GPURenderPassEncoder10.end();
    const string48 = GPUDevice2.label
    const GPUSupportedFeatures17 = GPUDevice2.features
    const GPUSupportedFeatures18 = GPUAdapter10.features
    const string49 = GPURenderPassEncoder8.label
    const GPUSupportedFeatures19 = GPUAdapter5.features
    const GPUSupportedFeatures20 = GPUDevice2.features
    const GPUBuffer40 = GPUDevice0.createBuffer({
        label: "GPUBuffer40",
        mappedAtCreation: true,
        size: 79816344,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.UNIFORM
    });
    const string50 = GPUQueue20.label
    const string51 = GPUQuerySet7.label
    const string52 = GPURenderPassEncoder8.label
    const GPUSupportedFeatures21 = GPUDevice3.features
    const GPUQueue29 = GPUDevice4.queue
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline2);
    const string53 = GPUCommandEncoder11.label
    const GPURenderPipeline9 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "zero",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.RED
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
            module: GPUShaderModule2
        }
    });
    const GPUCommandEncoder23 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder23"
    });
    const GPUQuerySet18 = GPUDevice2.createQuerySet({
        count: 563,
        label: "GPUQuerySet18",
        type: "occlusion"
    });
    GPUComputePassEncoder13.end();
    const GPUBuffer41 = GPUDevice0.createBuffer({
        label: "GPUBuffer41",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder11.copyBufferToBuffer(GPUBuffer1, 0, GPUBuffer41, 0, 64);
    const GPUComputePipeline40 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline40",
        layout: "auto"
    });
    const GPUSupportedLimits11 = GPUDevice2.limits
    const GPUQuerySet19 = GPUDevice2.createQuerySet({
        count: 3508,
        label: "GPUQuerySet19",
        type: "occlusion"
    });
    const GPUBuffer42 = GPUDevice2.createBuffer({
        label: "GPUBuffer42",
        mappedAtCreation: false,
        size: 35641116,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer42.mapAsync(GPUMapMode.READ);
    const ArrayBuffer10 = GPUBuffer42.getMappedRange();
    const GPUBuffer43 = GPUDevice4.createBuffer({
        label: "GPUBuffer43",
        mappedAtCreation: false,
        size: 145540060,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer43.mapAsync(GPUMapMode.READ);
    const GPUBindGroupLayout8 = GPUComputePipeline37.getBindGroupLayout(0);
    const GPUShaderModule16 = GPUDevice1.createShaderModule({
        label: "compute",
        code: shader16
    });
    const GPUComputePassEncoder14 = GPUCommandEncoder23.beginComputePass({
        label: "GPUComputePassEncoder14"
    });
    const string54 = GPUComputePassEncoder14.label
    const GPUQuerySet20 = GPUDevice0.createQuerySet({
        count: 174,
        label: "GPUQuerySet20",
        type: "occlusion"
    });
    const GPUComputePipeline41 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline41",
        layout: "auto"
    });
    GPUComputePassEncoder14.setPipeline(GPUComputePipeline41);
    const GPUComputePipeline42 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline42",
        layout: "auto"
    });
    const GPUQueue30 = GPUDevice2.queue
    GPUQueue30.writeBuffer(GPUBuffer13, 0, typedArray19);
    const GPUBindGroup16 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline41.bindGroup",
        layout: GPUComputePipeline41.getBindGroupLayout(0),
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
    GPUComputePassEncoder14.setBindGroup(0, GPUBindGroup16);
    GPUComputePassEncoder14.dispatchWorkgroups(204, 101, 64);
    const GPUSupportedLimits12 = GPUAdapter0.limits
    const GPUSupportedFeatures22 = GPUDevice4.features
    const boolean3 = GPUAdapter4.isFallbackAdapter
    const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    const GPUShaderModule17 = GPUDevice0.createShaderModule({
        label: "vertex",
        code: shader17
    });
    const GPUTexture16 = GPUDevice2.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg32sint",
        label: "GPUTexture16",
        size: {
            width: 1588,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg32sint"]
    });
    GPURenderPassEncoder8.setPipeline(GPURenderPipeline2);
    const GPUTexture17 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32uint",
        label: "GPUTexture17",
        size: {
            width: 353,
            height: 815,
            depthOrArrayLayers: 38
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["r32uint"]
    });
    const string55 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder14.end();
    const GPUBuffer44 = GPUDevice2.createBuffer({
        label: "GPUBuffer44",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder23.copyBufferToBuffer(GPUBuffer14, 0, GPUBuffer44, 0, 32);
    const GPUCommandEncoder24 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder24"
    });
    const GPUComputePassEncoder15 = GPUCommandEncoder24.beginComputePass({
        label: "GPUComputePassEncoder15"
    });
    const GPUComputePipeline43 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline43",
        layout: "auto"
    });
    GPUComputePassEncoder15.setPipeline(GPUComputePipeline43);
    const GPUComputePipeline44 = GPUDevice2.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule7
        },
        label: "GPUComputePipeline44",
        layout: "auto"
    });
    const GPUQueue31 = GPUDevice2.queue
    GPUQueue31.writeBuffer(GPUBuffer13, 0, typedArray20);
    const GPUBindGroup17 = GPUDevice2.createBindGroup({
        label: "GPUComputePipeline43.bindGroup",
        layout: GPUComputePipeline43.getBindGroupLayout(0),
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
    GPUComputePassEncoder15.setBindGroup(0, GPUBindGroup17);
    GPUComputePassEncoder15.dispatchWorkgroups(86, 166, 57);
    const string56 = GPUComputePipeline24.label
    GPUBuffer28.unmap();
    GPUComputePassEncoder15.end();
    const GPUBuffer45 = GPUDevice2.createBuffer({
        label: "GPUBuffer45",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder24.copyBufferToBuffer(GPUBuffer14, 0, GPUBuffer45, 0, 32);
    const GPUSupportedLimits13 = GPUDevice2.limits
    const boolean4 = GPUAdapter0.isFallbackAdapter
    const GPUComputePassEncoder16 = GPUCommandEncoder11.beginComputePass({
        label: "GPUComputePassEncoder16"
    });
    const GPUComputePipeline45 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline45",
        layout: "auto"
    });
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline45);
    const GPUComputePipeline46 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline46",
        layout: "auto"
    });
    const GPUQueue32 = GPUDevice0.queue
    GPUQueue32.writeBuffer(GPUBuffer0, 0, typedArray21);
    const GPUBindGroup18 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline45.bindGroup",
        layout: GPUComputePipeline45.getBindGroupLayout(0),
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder16.dispatchWorkgroups(230, 244, 23);
    const GPURenderPipeline10 = GPUDevice2.createRenderPipeline({
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
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline10",
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
            module: GPUShaderModule6
        }
    });
    GPUQueue18.writeBuffer(GPUBuffer22, 40, typedArray22);
    const GPUShaderModule18 = GPUDevice4.createShaderModule({
        label: "fragment",
        code: shader18
    });
    const GPUShaderModule19 = GPUDevice4.createShaderModule({
        label: "vertex",
        code: shader19
    });
    const GPURenderPipeline11 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule18,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-dst"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.BLUE
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule19
        }
    });
    const string57 = GPUComputePassEncoder16.label
    const string58 = GPUCommandEncoder23.label
    const GPUQueue33 = GPUDevice1.queue
    const GPUComputePassEncoder17 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder17"
    });
    const GPUShaderModule20 = GPUDevice3.createShaderModule({
        label: "compute",
        code: shader20
    });
    const string59 = GPUCommandEncoder3.label
    const GPUComputePipeline47 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline47",
        layout: "auto"
    });
    GPUComputePassEncoder17.setPipeline(GPUComputePipeline47);
    const GPUComputePipeline48 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline48",
        layout: "auto"
    });
    const GPUQueue34 = GPUDevice1.queue
    GPUQueue34.writeBuffer(GPUBuffer19, 0, typedArray23);
    const GPUBindGroup19 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline47.bindGroup",
        layout: GPUComputePipeline47.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder17.setBindGroup(0, GPUBindGroup19);
    GPUComputePassEncoder17.dispatchWorkgroups(91, 78, 10);
    const string60 = GPUDevice0.label
    const string61 = GPURenderPipeline3.label
    const GPUComputePipeline49 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline49",
        layout: "auto"
    });
    const GPUCommandBuffer16 = GPUCommandEncoder18.finish();
    GPURenderPassEncoder8.end();
    const string62 = GPUTextureView8.label
    const GPUSupportedLimits14 = GPUDevice3.limits
    const GPUSupportedFeatures23 = GPUAdapter10.features
    const GPUAdapterInfo2 = GPUAdapter8.info
    const string63 = GPUBuffer33.label
    GPUCommandEncoder24.copyBufferToBuffer(GPUBuffer9, 246163388, GPUBuffer17, 12797772, 1316204);
    const string64 = GPUComputePassEncoder16.label
    const GPUCommandBuffer17 = GPUCommandEncoder14.finish();
    const string65 = GPUDevice1.label
    const boolean5 = GPUAdapter1.isFallbackAdapter
    const GPUTexture18 = GPUDevice4.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba8unorm-srgb",
        label: "GPUTexture18",
        size: {
            width: 503,
            height: 673,
            depthOrArrayLayers: 47
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm"]
    });
    const GPUTextureView23 = GPUTexture18.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 7,
        format: "rgba8unorm",
        label: "GPUTextureView23"
    });
    const GPUQuerySet21 = GPUDevice4.createQuerySet({
        count: 1246,
        label: "GPUQuerySet21",
        type: "occlusion"
    });
    const GPURenderPassEncoder11 = GPUCommandEncoder20.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5537799210259449,
                g: 0.2552460112492688,
                b: 0.6307511949602316,
                a: 0.6110458018349129
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView23,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder11",
        maxDrawCount: 3363629892,
        occlusionQuerySet: GPUQuerySet21
    });
    const GPUBuffer46 = GPUDevice4.createBuffer({
        label: "GPUBuffer46",
        mappedAtCreation: false,
        size: 199580728,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer46);
    const string66 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUCommandEncoder25 = GPUDevice2.createCommandEncoder({
        label: "GPUCommandEncoder25"
    });
    GPURenderPassEncoder11.setVertexBuffer(0, GPUBuffer46);
    const string67 = GPUTextureView6.label
    const string68 = GPUTextureView8.label
    const string69 = GPURenderPassEncoder11.label
    GPURenderPassEncoder11.end();
    const string70 = GPUTextureView21.label
    const string71 = GPUComputePassEncoder17.label
    const string72 = GPUDevice0.label
    const string73 = GPUComputePipeline19.label
    const GPUTexture19 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "r8unorm",
        label: "GPUTexture19",
        size: {
            width: 4020,
            height: 316,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8unorm"]
    });
    const GPUTextureView24 = GPUTexture19.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r8unorm",
        label: "GPUTextureView24"
    });
    const GPUQuerySet22 = GPUDevice2.createQuerySet({
        count: 3850,
        label: "GPUQuerySet22",
        type: "occlusion"
    });
    const GPURenderPassEncoder12 = GPUCommandEncoder23.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.19626134912695525,
                g: 0.08893207692950311,
                b: 0.1650310982823019,
                a: 0.5632313003468007
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView24
        }],
        label: "GPURenderPassEncoder12",
        maxDrawCount: 2291723696,
        occlusionQuerySet: GPUQuerySet22
    });
    const string74 = GPURenderPassEncoder12.label
    const GPUBuffer47 = GPUDevice3.createBuffer({
        label: "GPUBuffer47",
        mappedAtCreation: true,
        size: 99162288,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    });
    const string75 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder17.end();
    const GPUBuffer48 = GPUDevice1.createBuffer({
        label: "GPUBuffer48",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer20, 0, GPUBuffer48, 0, 64);
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer20, 36, GPUBuffer22, 24, 20);
    const GPUComputePassEncoder18 = GPUCommandEncoder9.beginComputePass({
        label: "GPUComputePassEncoder18"
    });
    const GPUTexture20 = GPUDevice0.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture20",
        size: {
            width: 224,
            height: 319,
            depthOrArrayLayers: 55
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm"]
    });
    const GPUTextureView25 = GPUTexture20.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "bgra8unorm",
        label: "GPUTextureView25"
    });
    const GPUQuerySet23 = GPUDevice0.createQuerySet({
        count: 1853,
        label: "GPUQuerySet23",
        type: "occlusion"
    });
    const GPURenderPassEncoder13 = GPUCommandEncoder3.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.295726613148629,
                g: 0.6676060727650582,
                b: 0.7642799190504814,
                a: 0.9269111862894882
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView25,
            depthSlice: 9
        }],
        label: "GPURenderPassEncoder13",
        maxDrawCount: 2892425589,
        occlusionQuerySet: GPUQuerySet23
    });
    const string76 = GPUComputePipeline49.label
    GPUBuffer8.unmap();
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline2);
    const GPUComputePassEncoder19 = GPUCommandEncoder12.beginComputePass({
        label: "GPUComputePassEncoder19"
    });
    const string77 = GPUTextureView8.label
    const string78 = GPURenderPassEncoder12.label
    const GPUComputePipeline50 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline50",
        layout: "auto"
    });
    const GPUComputePipeline51 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline51",
        layout: "auto"
    });
    const GPUQueue35 = GPUDevice1.queue
    GPUQueue35.writeBuffer(GPUBuffer19, 0, typedArray24);
    const GPUBindGroup20 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline51.bindGroup",
        layout: GPUComputePipeline51.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUBuffer42.unmap();
    const GPURenderPipeline12 = GPUDevice4.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule18,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-dst"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline12",
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
            module: GPUShaderModule19
        }
    });
    const GPUAdapter11 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUComputePipeline52 = GPUDevice3.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule15
        },
        label: "GPUComputePipeline52",
        layout: "auto"
    });
    const string79 = GPUComputePassEncoder19.label
    const GPUQueue36 = GPUDevice1.queue
    const string80 = await navigator.gpu.getPreferredCanvasFormat();
    const string81 = GPUDevice2.label
    const GPUBuffer49 = GPUDevice0.createBuffer({
        label: "GPUBuffer49",
        mappedAtCreation: false,
        size: 246519724,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer49.mapAsync(GPUMapMode.READ);
    const ArrayBuffer11 = GPUBuffer49.getMappedRange();
    const GPUShaderModule21 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader21
    });
    GPUBuffer35.unmap();
    const string82 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline2);
    GPUBuffer28.unmap();
    const string83 = GPUQuerySet23.label
    const GPUBuffer50 = GPUDevice2.createBuffer({
        label: "GPUBuffer50",
        mappedAtCreation: false,
        size: 37759064,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    });
    const GPUComputePipeline53 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline53",
        layout: "auto"
    });
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline53);
    const GPUComputePipeline54 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline54",
        layout: "auto"
    });
    const GPUQueue37 = GPUDevice1.queue
    GPUQueue37.writeBuffer(GPUBuffer19, 0, typedArray25);
    const GPUBindGroup21 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline53.bindGroup",
        layout: GPUComputePipeline53.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder18.dispatchWorkgroups(249, 1, 60);
    const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    const GPUBuffer51 = GPUDevice0.createBuffer({
        label: "GPUBuffer51",
        mappedAtCreation: false,
        size: 75447288,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const GPUSupportedFeatures24 = GPUAdapter8.features
    const GPUComputePipeline55 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline55",
        layout: "auto"
    });
    GPUComputePassEncoder19.setPipeline(GPUComputePipeline55);
    const GPUComputePipeline56 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule16
        },
        label: "GPUComputePipeline56",
        layout: "auto"
    });
    const GPUQueue38 = GPUDevice1.queue
    GPUQueue38.writeBuffer(GPUBuffer19, 0, typedArray26);
    const GPUBindGroup22 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline55.bindGroup",
        layout: GPUComputePipeline55.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder19.setBindGroup(0, GPUBindGroup22);
    GPUComputePassEncoder19.dispatchWorkgroups(58, 139, 23);
    const GPUBuffer52 = GPUDevice3.createBuffer({
        label: "GPUBuffer52",
        mappedAtCreation: false,
        size: 168925960,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const GPUAdapter12 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUBuffer53 = GPUDevice2.createBuffer({
        label: "GPUBuffer53",
        mappedAtCreation: false,
        size: 166026876,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer53.mapAsync(GPUMapMode.READ);
    const GPUComputePipeline57 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline57",
        layout: "auto"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup18);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline57);
    const GPUComputePipeline58 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline58",
        layout: "auto"
    });
    const GPUQueue39 = GPUDevice0.queue
    GPUQueue39.writeBuffer(GPUBuffer0, 0, typedArray27);
    const GPUBindGroup23 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline57.bindGroup",
        layout: GPUComputePipeline57.getBindGroupLayout(0),
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup23);
    GPUComputePassEncoder16.dispatchWorkgroups(188, 118, 27);
    GPURenderPassEncoder13.setVertexBuffer(0, GPUBuffer0);
    GPURenderPassEncoder13.setPipeline(GPURenderPipeline2);
    const string84 = GPUComputePipeline20.label
    const GPUComputePipeline59 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline59",
        layout: "auto"
    });
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup21);
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline59);
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer10);
    const string85 = await navigator.gpu.getPreferredCanvasFormat();
    GPUComputePassEncoder19.end();
    const GPUBuffer54 = GPUDevice1.createBuffer({
        label: "GPUBuffer54",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer20, 0, GPUBuffer54, 0, 64);
    const GPUCommandBuffer18 = GPUCommandEncoder12.finish();
    const GPUSupportedLimits15 = GPUDevice3.limits
    const GPUComputePipeline60 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline60",
        layout: "auto"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup23);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline60);
    const GPUComputePipeline61 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline61",
        layout: "auto"
    });
    const GPUComputePipeline62 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline62",
        layout: "auto"
    });
    const GPUQueue40 = GPUDevice1.queue
    GPUQueue40.writeBuffer(GPUBuffer19, 0, typedArray28);
    const GPUBindGroup24 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline59.bindGroup",
        layout: GPUComputePipeline59.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup24);
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline61);
    const GPUAdapter13 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUAdapter14 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUComputePipeline63 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline63",
        layout: "auto"
    });
    GPUBuffer48.unmap();
    const string86 = GPUComputePassEncoder18.label
    const string87 = GPUDevice3.label
    const GPUSupportedFeatures25 = GPUDevice3.features
    const GPUComputePipeline64 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline64",
        layout: "auto"
    });
    const GPUComputePipeline65 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline65",
        layout: "auto"
    });
    const GPUQueue41 = GPUDevice1.queue
    GPUQueue41.writeBuffer(GPUBuffer19, 0, typedArray29);
    const GPUBindGroup25 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline61.bindGroup",
        layout: GPUComputePipeline61.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup25);
    GPUComputePassEncoder18.setPipeline(GPUComputePipeline64);
    const GPUComputePipeline66 = GPUDevice1.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule4
        },
        label: "GPUComputePipeline66",
        layout: "auto"
    });
    const GPUQueue42 = GPUDevice1.queue
    GPUQueue42.writeBuffer(GPUBuffer19, 0, typedArray30);
    const GPUBindGroup26 = GPUDevice1.createBindGroup({
        label: "GPUComputePipeline64.bindGroup",
        layout: GPUComputePipeline64.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer19
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer20
            }
        }]
    });
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup26);
    GPUComputePassEncoder18.dispatchWorkgroups(11, 201, 10);
    const GPURenderPipeline13 = GPUDevice2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule5,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "GPURenderPipeline13",
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
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder12.setPipeline(GPURenderPipeline13);
    GPURenderPassEncoder12.draw(1);
    const string88 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUComputePipeline67 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline67",
        layout: "auto"
    });
    const GPUComputePipeline68 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline68",
        layout: "auto"
    });
    const GPUQueue43 = GPUDevice0.queue
    GPUQueue43.writeBuffer(GPUBuffer0, 0, typedArray31);
    const GPUBindGroup27 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline60.bindGroup",
        layout: GPUComputePipeline60.getBindGroupLayout(0),
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup27);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline67);
    const GPUComputePipeline69 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline69",
        layout: "auto"
    });
    const GPUQueue44 = GPUDevice0.queue
    GPUQueue44.writeBuffer(GPUBuffer0, 0, typedArray32);
    const GPUBindGroup28 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline67.bindGroup",
        layout: GPUComputePipeline67.getBindGroupLayout(0),
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup28);
    GPUComputePassEncoder16.dispatchWorkgroups(48, 43, 39);
    const GPUSupportedFeatures26 = GPUDevice1.features
    GPURenderPassEncoder12.setVertexBuffer(0, GPUBuffer10);
    GPURenderPassEncoder13.draw(8);
    GPUComputePassEncoder18.setBindGroup(0, GPUBindGroup26);
    const string89 = GPURenderPipeline2.label
    GPURenderPassEncoder13.draw(3);
    GPUBuffer37.unmap();
    const GPUTextureView26 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba32sint",
        label: "GPUTextureView26"
    });
    const string90 = GPUComputePipeline1.label
    const GPUComputePipeline70 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline70",
        layout: "auto"
    });
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup28);
    GPUComputePassEncoder16.setPipeline(GPUComputePipeline70);
    const GPUComputePipeline71 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule0
        },
        label: "GPUComputePipeline71",
        layout: "auto"
    });
    const GPUQueue45 = GPUDevice0.queue
    GPUQueue45.writeBuffer(GPUBuffer0, 0, typedArray33);
    const GPUBindGroup29 = GPUDevice0.createBindGroup({
        label: "GPUComputePipeline70.bindGroup",
        layout: GPUComputePipeline70.getBindGroupLayout(0),
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
    GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup29);
    GPUComputePassEncoder16.dispatchWorkgroups(81, 176, 64);
    const string91 = GPUBuffer27.label
    const GPUBuffer55 = GPUDevice4.createBuffer({
        label: "GPUBuffer55",
        mappedAtCreation: false,
        size: 37880824,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer55.mapAsync(GPUMapMode.READ);
    const ArrayBuffer12 = GPUBuffer55.getMappedRange();
    const GPUBindGroupLayout9 = GPUComputePipeline54.getBindGroupLayout(0);
    const GPUShaderModule22 = GPUDevice4.createShaderModule({
        label: "compute",
        code: shader22
    });
    GPURenderPassEncoder13.end();
    const GPUCommandBuffer19 = GPUCommandEncoder3.finish();
    const string92 = GPUComputePipeline59.label
    const GPUSupportedLimits16 = GPUAdapter3.limits
    const string93 = GPURenderPipeline11.label
    const GPUSupportedFeatures27 = GPUDevice1.features
    const GPUComputePassEncoder20 = GPUCommandEncoder24.beginComputePass({
        label: "GPUComputePassEncoder20"
    });
    const GPUBuffer56 = GPUDevice1.createBuffer({
        label: "GPUBuffer56",
        mappedAtCreation: false,
        size: 104077456,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    await GPUBuffer56.mapAsync(GPUMapMode.READ);
    const GPUShaderModule23 = GPUDevice3.createShaderModule({
        label: "fragment",
        code: shader23
    });
    const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    GPURenderPassEncoder12.end();
    const GPUCommandBuffer20 = GPUCommandEncoder23.finish();
    const GPUComputePipeline72 = GPUDevice0.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule10
        },
        label: "GPUComputePipeline72",
        layout: "auto"
    });
    const GPUComputePassEncoder21 = GPUCommandEncoder20.beginComputePass({
        label: "GPUComputePassEncoder21"
    });
    const GPUSupportedFeatures28 = GPUDevice2.features
    const GPUSupportedLimits17 = GPUAdapter0.limits
    const GPUCommandEncoder26 = GPUDevice1.createCommandEncoder({
        label: "GPUCommandEncoder26"
    });
    const GPUTexture21 = GPUDevice2.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture21",
        size: {
            width: 2311,
            height: 1140,
            depthOrArrayLayers: 34
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView27 = GPUTexture21.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg16float",
        label: "GPUTextureView27"
    });
    const GPUQuerySet24 = GPUDevice2.createQuerySet({
        count: 3097,
        label: "GPUQuerySet24",
        type: "occlusion"
    });
    const GPURenderPassEncoder14 = GPUCommandEncoder25.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.11533479864717633,
                g: 0.5762869802105639,
                b: 0.16732851088484868,
                a: 0.8865387446890438
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView27
        }],
        label: "GPURenderPassEncoder14",
        maxDrawCount: 4227863858,
        occlusionQuerySet: GPUQuerySet24
    });
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer10);
    const GPUSupportedFeatures29 = GPUDevice1.features
    const string94 = GPUComputePipeline23.label
    const string95 = GPUTextureView3.label
    const GPURenderPipeline14 = GPUDevice1.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule8,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "one-minus-src-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src-alpha",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
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
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule11
        }
    });
    const GPUTexture22 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8snorm",
        label: "GPUTexture22",
        size: {
            width: 1245,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8snorm"]
    });
    const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    const GPUAdapterInfo3 = GPUAdapter12.info
    const GPUComputePipeline73 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule22
        },
        label: "GPUComputePipeline73",
        layout: "auto"
    });
    GPUComputePassEncoder21.setPipeline(GPUComputePipeline73);
    const GPUComputePipeline74 = GPUDevice4.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: GPUShaderModule14
        },
        label: "GPUComputePipeline74",
        layout: "auto"
    });
    const GPUBuffer57 = GPUDevice4.createBuffer({
        label: "GPUBuffer57",
        mappedAtCreation: false,
        size: 8,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX
    });
    const GPUBuffer58 = GPUDevice4.createBuffer({
        label: "GPUBuffer58",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX
    });
    const GPUQueue46 = GPUDevice4.queue
    GPUQueue46.writeBuffer(GPUBuffer57, 0, typedArray34);
    const GPUBindGroup30 = GPUDevice4.createBindGroup({
        label: "GPUComputePipeline73.bindGroup",
        layout: GPUComputePipeline73.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: GPUBuffer57
            }
        }, {
            binding: 1,
            resource: {
                buffer: GPUBuffer58
            }
        }]
    });
    GPUComputePassEncoder21.setBindGroup(0, GPUBindGroup30);
    GPUComputePassEncoder21.dispatchWorkgroups(214, 86, 51);
    const GPUSupportedLimits18 = GPUAdapter3.limits
    const string96 = GPUQuerySet5.label
    const boolean6 = GPUAdapter0.isFallbackAdapter
    GPUQueue17.writeBuffer(GPUBuffer48, 16, typedArray35);
    const string97 = GPUDevice4.label
    const string98 = GPUComputePipeline45.label
    const GPURenderPipeline15 = GPUDevice2.createRenderPipeline({
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
                        operation: "add",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline15",
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
            module: GPUShaderModule6
        }
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline15);
    const GPUTexture23 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture23",
        size: {
            width: 3856,
            height: 3580,
            depthOrArrayLayers: 64
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const GPUQuerySet25 = GPUDevice1.createQuerySet({
        count: 2056,
        label: "GPUQuerySet25",
        type: "occlusion"
    });
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer10);
    GPUComputePassEncoder18.end();
    const GPUBuffer59 = GPUDevice1.createBuffer({
        label: "GPUBuffer59",
        mappedAtCreation: false,
        size: 64,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    GPUCommandEncoder9.copyBufferToBuffer(GPUBuffer20, 0, GPUBuffer59, 0, 64);
    const GPUCommandBuffer21 = GPUCommandEncoder9.finish();
    GPURenderPassEncoder14.setVertexBuffer(0, GPUBuffer10);
    const GPUAdapter15 = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const GPUQuerySet26 = GPUDevice2.createQuerySet({
        count: 1870,
        label: "GPUQuerySet26",
        type: "occlusion"
    });
    const GPUSupportedFeatures30 = GPUDevice1.features
    const GPUTexture24 = GPUDevice1.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r32sint",
        label: "GPUTexture24",
        size: {
            width: 32,
            height: 748,
            depthOrArrayLayers: 35
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r32sint"]
    });
    GPURenderPassEncoder14.setPipeline(GPURenderPipeline15);
    const GPUQuerySet27 = GPUDevice0.createQuerySet({
        count: 129,
        label: "GPUQuerySet27",
        type: "occlusion"
    });
    const GPUSupportedFeatures31 = GPUAdapter2.features
    const GPUTextureView28 = GPUTexture3.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 3,
        baseMipLevel: 1,
        format: "rgba32sint",
        label: "GPUTextureView28"
    });
    const string99 = GPUQuerySet14.label
    const GPUBuffer60 = GPUDevice1.createBuffer({
        label: "GPUBuffer60",
        mappedAtCreation: true,
        size: 189316628,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX
    });
    const string100 = await navigator.gpu.getPreferredCanvasFormat();
    const GPUQueue47 = GPUDevice2.queue
    const GPUTexture25 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "bgra8unorm-srgb",
        label: "GPUTexture25",
        size: {
            width: 1411,
            height: 1516,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const GPUTextureView29 = GPUTexture25.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "bgra8unorm-srgb",
        label: "GPUTextureView29"
    });
    const GPUQuerySet28 = GPUDevice1.createQuerySet({
        count: 3033,
        label: "GPUQuerySet28",
        type: "occlusion"
    });
    const GPURenderPassEncoder15 = GPUCommandEncoder26.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.09693530556967289,
                g: 0.11614046488133722,
                b: 0.22444225664465622,
                a: 0.5161407520334579
            },
            loadOp: "load",
            storeOp: "discard",
            view: GPUTextureView29
        }],
        label: "GPURenderPassEncoder15",
        maxDrawCount: 2052264366,
        occlusionQuerySet: GPUQuerySet28
    });
    const GPUTexture26 = GPUDevice1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba16uint",
        label: "GPUTexture26",
        size: {
            width: 3332,
            height: 500,
            depthOrArrayLayers: 17
        },
        mipLevelCount: 8,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba16uint"]
    });
    const string101 = GPUBuffer56.label
    const GPUShaderModule24 = GPUDevice1.createShaderModule({
        label: "vertex",
        code: shader24
    });

}
main().catch(console.error);