const {
    create,
    globals
} = require('D:/final_proj/dawn/out/Debug/Debug/dawn.node');
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
const typedArray47 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray46 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray45 = new Uint8Array([7937, 5811, -4926, 7092])
const typedArray44 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray43 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray42 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray41 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader20 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray40 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray39 = new Float32Array([-7419])
const typedArray38 = new Uint8Array([-8680, 1805, -7458, 6043, 167, -1700, 1334, -1942, -8593, -2952, 6640, -253, -1563, -3768, 7748, -2413, 2036, -2276, -9229, -9628, -1346, 2765, -5059, 7415, -6298, 8093, 1791, -7617, 7337, 1913, 5731, 9940, 9055, -3855, 5454, -3207, 7600, 8967, -4248, -7271, -5180, -3269, 7998, -9387, -6597, -2971, 8759, -4791, 9894, -1867, 8631, 8795, 6115, -9384, -8223, 4742, -3360, -2147, -5110, -8888, -6561, 8066, -1347, 6533, -7681, 4390, 1542, 2369, 2875, 4583, 2484, 668, -6446, -2644, 7792, 3614, -2466, 4826, -6460, -1944, 3486, -8389, 9623, -7553, -5872, -3451, 2976, 5903, 1531, -4088, -2209, -5622])
const typedArray37 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray36 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray35 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader19 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader18 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader17 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader16 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray34 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader15 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const shader14 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray33 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray32 = new Uint8Array([-9298, -3531, 2505, -7406])
const shader13 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray31 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray30 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray29 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray28 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const typedArray27 = new Int8Array([7724, 8895, -14, 5509])
const typedArray26 = new Float32Array([2035])
const typedArray25 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray24 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray23 = new Int8Array([5814, 5776, 4370, 4612])
const typedArray22 = new Uint8Array([-1271, -8078, 9478, 9080, -2857, 6580, 6772, 6161])
const shader12 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader11 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray21 = new Int8Array([-2440, -4606, -5479, 1988])
const typedArray20 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader10 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray19 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader9 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const shader8 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray18 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray17 = new Int8Array([702, 6648, 8852, -8622])
const shader7 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const typedArray16 = new Uint8Array([150, 70, 43, 68, 72, 93, 63, 3, 183, 151, 92, 60, 76, 35, 220, 145, 218, 41, 20, 253, 167, 52, 142, 101, 213, 48, 121, 26, 214, 81, 179, 223, 193, 2, 227, 92, 253, 187, 11, 222, 231, 31, 209, 196, 41, 242, 17, 90])
const shader6 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl');
const typedArray15 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray14 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray13 = new Int8Array([-6145, 8893, -9810, -3875])
const shader5 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray12 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray11 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray10 = new Uint8Array([-6664, 3578, -4682, 4521, 2011, 9898, -6234, 1464])
const typedArray9 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray8 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray7 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray6 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray5 = new Uint8Array([-5752, 7046, -4713, 2399])
const typedArray4 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const typedArray3 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader4 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray2 = new Uint8Array([-9836, -4852, 6189, -6134])
const shader3 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const typedArray1 = new Int8Array([-1317, -6782, 9837, 6934])
const shader2 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const shader1 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const typedArray0 = new Uint8Array([47, 19, 231, 46, 157, 126, 237, 69])
const shader0 = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

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
    await GPUBuffer0.mapAsync();
    const string4 = GPUCommandEncoder1.label
    const GPUTexture2 = GPUDevice0.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "GPUTexture2",
        size: {
            width: 937,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const string5 = GPUComputePipeline1.label
    const GPURenderPipeline2 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.GREEN
            }]
        },
        label: "GPURenderPipeline2",
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
            module: GPUShaderModule2
        }
    });
    const GPUSupportedLimits1 = GPUAdapter0.limits
    const GPUSupportedFeatures2 = GPUDevice0.features
    const GPUQueue1 = GPUDevice0.queue
    const string6 = await navigator.gpu.getPreferredCanvasFormat();
    GPURenderPassEncoder0.setVertexBuffer(0, GPUBuffer0);
    const GPUSupportedLimits2 = GPUAdapter0.limits
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
    const string7 = GPUComputePipeline1.label
    const GPUBindGroupLayout0 = GPUComputePipeline0.getBindGroupLayout(0);
    const string8 = GPUComputePipeline1.label
    const GPUTextureView1 = GPUTexture2.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "GPUTextureView1"
    });
    const GPUQueue2 = GPUDevice0.queue
    const GPUCommandEncoder2 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder2"
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
    const GPUTextureView2 = GPUTexture4.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r16float",
        label: "GPUTextureView2"
    });
    const GPUQuerySet2 = GPUDevice0.createQuerySet({
        count: 992,
        label: "GPUQuerySet2",
        type: "occlusion"
    });
    const GPURenderPassEncoder1 = GPUCommandEncoder2.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4709608705549462,
                g: 0.698163053456202,
                b: 0.3562516969131433,
                a: 0.15360293714219453
            },
            loadOp: "clear",
            storeOp: "discard",
            view: GPUTextureView2,
            depthSlice: 0
        }],
        label: "GPURenderPassEncoder1",
        maxDrawCount: 3118404039,
        occlusionQuerySet: GPUQuerySet2
    });
    const GPUCommandEncoder3 = GPUDevice0.createCommandEncoder({
        label: "GPUCommandEncoder3"
    });
    const GPUComputePassEncoder1 = GPUCommandEncoder3.beginComputePass({
        label: "GPUComputePassEncoder1"
    });
    GPUComputePassEncoder1.end();
    const GPURenderPipeline3 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule1,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "src-alpha-saturated"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.RED
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    const GPUSupportedFeatures3 = GPUAdapter0.features
    GPURenderPassEncoder0.draw(10);
    const GPUBindGroupLayout1 = GPUComputePipeline1.getBindGroupLayout(0);
    const string9 = GPUQuerySet0.label
    const GPURenderPipeline4 = GPUDevice0.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: GPUShaderModule4,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "GPURenderPipeline4",
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
            module: GPUShaderModule3
        }
    });
    GPURenderPassEncoder0.end();
    const GPUCommandBuffer0 = GPUCommandEncoder1.finish();
    GPUQueue2.submit([GPUCommandBuffer0]);
    const string10 = GPUBuffer1.label
    GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    const GPUQueue3 = GPUDevice0.queue
    const GPUBindGroupLayout2 = GPUComputePipeline0.getBindGroupLayout(0);
    const string11 = GPUDevice0.label
    const string12 = GPUCommandEncoder0.label
    GPUComputePassEncoder0.end();
    const string13 = GPUTextureView0.label
    GPUCommandEncoder0.copyBufferToBuffer(GPUBuffer1, 40, GPUBuffer0, 8, 0);
    GPUBuffer0.unmap();
    // const string14 = GPUBuffer1.label
    // const string15 = GPURenderPassEncoder1.label
    // const GPUComputePassEncoder2 = GPUCommandEncoder0.beginComputePass({
    //     label: "GPUComputePassEncoder2"
    // });
    // const GPUComputePipeline2 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline2",
    //     layout: "auto"
    // });
    // const GPUQueue4 = GPUDevice0.queue
    // GPUQueue4.writeBuffer(GPUBuffer0, 0, typedArray3);
    // const GPUBindGroup1 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline2.bindGroup",
    //     layout: GPUComputePipeline2.getBindGroupLayout(0),
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
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup1);
    // const GPUComputePipeline3 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline3",
    //     layout: "auto"
    // });
    // const string16 = GPUTextureView1.label
    // const WGSLLanguageFeatures0 = navigator.gpu.wgslLanguageFeatures
    // const string17 = GPUQueue4.label
    // GPURenderPassEncoder1.draw(8);
    // const GPUAdapterInfo0 = GPUAdapter0.info
    // const GPUAdapter1 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // GPURenderPassEncoder1.draw(8);
    // const string18 = GPURenderPassEncoder1.label
    // const GPUComputePassEncoder3 = GPUCommandEncoder3.beginComputePass({
    //     label: "GPUComputePassEncoder3"
    // });
    // const boolean2 = GPUAdapter0.isFallbackAdapter
    // const boolean3 = GPUAdapter1.isFallbackAdapter
    // const GPUSupportedFeatures4 = GPUAdapter0.features
    // const GPUComputePipeline4 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline4",
    //     layout: "auto"
    // });
    // const GPUQueue5 = GPUDevice0.queue
    // GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray4);
    // const GPUBindGroup2 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline4.bindGroup",
    //     layout: GPUComputePipeline4.getBindGroupLayout(0),
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
    // GPURenderPassEncoder1.setVertexBuffer(0, GPUBuffer0);
    // const GPUAdapterInfo1 = GPUAdapter0.info
    // const GPUQuerySet3 = GPUDevice0.createQuerySet({
    //     count: 1052,
    //     label: "GPUQuerySet3",
    //     type: "occlusion"
    // });
    // const GPUBuffer2 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer2",
    //     mappedAtCreation: true,
    //     size: 215206516,
    //     usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE
    // });
    // const ArrayBuffer0 = GPUBuffer2.getMappedRange();
    // GPUComputePassEncoder3.end();
    // const GPUCommandBuffer1 = GPUCommandEncoder3.finish();
    // const string19 = GPUCommandEncoder0.label
    // const WGSLLanguageFeatures1 = navigator.gpu.wgslLanguageFeatures
    // const string20 = GPUComputePipeline4.label
    // GPUQueue0.writeBuffer(GPUBuffer0, 4, typedArray5);
    // const string21 = await navigator.gpu.getPreferredCanvasFormat();
    // const string22 = GPUComputePassEncoder2.label
    // const GPUComputePipeline5 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline5",
    //     layout: "auto"
    // });
    // const GPUComputePipeline6 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline6",
    //     layout: "auto"
    // });
    // const GPUQueue6 = GPUDevice0.queue
    // GPUQueue6.writeBuffer(GPUBuffer0, 0, typedArray6);
    // const GPUBindGroup3 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline6.bindGroup",
    //     layout: GPUComputePipeline6.getBindGroupLayout(0),
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
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup3);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline5);
    // const GPUComputePipeline7 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline7",
    //     layout: "auto"
    // });
    // const GPUQueue7 = GPUDevice0.queue
    // GPUQueue7.writeBuffer(GPUBuffer0, 0, typedArray7);
    // const GPUBindGroup4 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline5.bindGroup",
    //     layout: GPUComputePipeline5.getBindGroupLayout(0),
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
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup4);
    // GPUComputePassEncoder2.dispatchWorkgroups(239, 217, 14);
    // GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    // const GPUComputePipeline8 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline8",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup4);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline8);
    // const GPUComputePipeline9 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline9",
    //     layout: "auto"
    // });
    // const GPUQueue8 = GPUDevice0.queue
    // GPUQueue8.writeBuffer(GPUBuffer0, 0, typedArray8);
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
    // GPUComputePassEncoder2.dispatchWorkgroups(238, 144, 39);
    // const GPUTexture5 = GPUDevice0.createTexture({
    //     dimension: "2d",
    //     sampleCount: 4,
    //     format: "r16uint",
    //     label: "GPUTexture5",
    //     size: {
    //         width: 830,
    //         height: 3480,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["r16uint"]
    // });
    // const WGSLLanguageFeatures2 = navigator.gpu.wgslLanguageFeatures
    // const GPUComputePipeline10 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline10",
    //     layout: "auto"
    // });
    // const GPUQueue9 = GPUDevice0.queue
    // GPUQueue9.writeBuffer(GPUBuffer0, 0, typedArray9);
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
    // const GPUSupportedFeatures5 = GPUDevice0.features
    // const string23 = GPUCommandEncoder0.label
    // const GPUAdapterInfo2 = GPUAdapter1.info
    // const GPUBuffer3 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer3",
    //     mappedAtCreation: true,
    //     size: 183597268,
    //     usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT
    // });
    // const GPUSupportedLimits3 = GPUAdapter1.limits
    // GPURenderPassEncoder1.setPipeline(GPURenderPipeline3);
    // const ArrayBuffer1 = GPUBuffer3.getMappedRange();
    // const GPUSupportedLimits4 = GPUDevice0.limits
    // GPUBuffer2.unmap();
    // const GPUCommandEncoder4 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder4"
    // });
    // const GPUAdapter2 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const string24 = GPUBuffer1.label
    // GPUBuffer1.unmap();
    // const GPUComputePipeline11 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline11",
    //     layout: "auto"
    // });
    // GPUQueue5.writeBuffer(GPUBuffer0, 0, typedArray10);
    // const GPUAdapter3 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUComputePipeline12 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline12",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup5);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline12);
    // const GPUComputePipeline13 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline13",
    //     layout: "auto"
    // });
    // const GPUQueue10 = GPUDevice0.queue
    // GPUQueue10.writeBuffer(GPUBuffer0, 0, typedArray11);
    // const GPUBindGroup7 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline12.bindGroup",
    //     layout: GPUComputePipeline12.getBindGroupLayout(0),
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
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup7);
    // GPUComputePassEncoder2.dispatchWorkgroups(99, 249, 31);
    // const string25 = GPUQuerySet1.label
    // const GPUAdapterInfo3 = GPUAdapter2.info
    // GPUBuffer3.unmap();
    // GPURenderPassEncoder1.draw(2);
    // const GPUBuffer4 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer4",
    //     mappedAtCreation: true,
    //     size: 165835104,
    //     usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM
    // });
    // const ArrayBuffer2 = GPUBuffer4.getMappedRange();
    // const GPUAdapterInfo4 = GPUAdapter3.info
    // const GPUCommandEncoder5 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder5"
    // });
    // const GPUCommandBuffer2 = GPUCommandEncoder5.finish();
    // GPUQueue5.submit([GPUCommandBuffer2]);
    // const WGSLLanguageFeatures3 = navigator.gpu.wgslLanguageFeatures
    // const GPUComputePipeline14 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline14",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup7);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline14);
    // const GPUComputePipeline15 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline15",
    //     layout: "auto"
    // });
    // const GPUQueue11 = GPUDevice0.queue
    // GPUQueue11.writeBuffer(GPUBuffer0, 0, typedArray12);
    // const GPUBindGroup8 = GPUDevice0.createBindGroup({
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
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup8);
    // GPUComputePassEncoder2.dispatchWorkgroups(126, 178, 18);
    // const GPUShaderModule5 = GPUDevice0.createShaderModule({
    //     label: "vertex",
    //     code: shader5
    // });
    // const GPUSupportedFeatures6 = GPUDevice0.features
    // GPURenderPassEncoder1.end();
    // const GPUTexture6 = GPUDevice0.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "r8unorm",
    //     label: "GPUTexture6",
    //     size: {
    //         width: 69,
    //         height: 348,
    //         depthOrArrayLayers: 16
    //     },
    //     mipLevelCount: 7,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["r8unorm"]
    // });
    // const GPUTextureView3 = GPUTexture6.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 4,
    //     format: "r8unorm",
    //     label: "GPUTextureView3"
    // });
    // const GPUQuerySet4 = GPUDevice0.createQuerySet({
    //     count: 3056,
    //     label: "GPUQuerySet4",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder2 = GPUCommandEncoder4.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.5936815528648478,
    //             g: 0.49089187020413105,
    //             b: 0.7697724850224507,
    //             a: 0.6023084838675157
    //         },
    //         loadOp: "clear",
    //         storeOp: "discard",
    //         view: GPUTextureView3,
    //         depthSlice: 0
    //     }],
    //     label: "GPURenderPassEncoder2",
    //     maxDrawCount: 3788642410,
    //     occlusionQuerySet: GPUQuerySet4
    // });
    // const GPURenderPipeline5 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule1,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one-minus-dst-alpha",
    //                     srcFactor: "one-minus-dst-alpha"
    //                 },
    //                 color: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "constant",
    //                     srcFactor: "one-minus-src"
    //                 }
    //             },
    //             format: "r8unorm",
    //             writeMask: GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED | GPUColorWrite.BLUE
    //         }]
    //     },
    //     label: "GPURenderPipeline5",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "cw",
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule2
    //     }
    // });
    // GPURenderPassEncoder2.setPipeline(GPURenderPipeline5);
    // GPURenderPassEncoder2.draw(6);
    // const GPURenderPipeline6 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule4,
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
    //     label: "GPURenderPipeline6",
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
    // const GPURenderPipeline7 = GPUDevice0.createRenderPipeline({
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
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "rgba8unorm",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline7",
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
    //         module: GPUShaderModule5
    //     }
    // });
    // const GPUCommandEncoder6 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder6"
    // });
    // const GPUCommandBuffer3 = GPUCommandEncoder6.finish();
    // GPUQueue3.submit([GPUCommandBuffer3]);
    // const string26 = GPUDevice0.label
    // GPUCommandEncoder0.copyBufferToBuffer(GPUBuffer0, 0, GPUBuffer0, 4, 0);
    // const string27 = GPURenderPassEncoder2.label
    // GPUBuffer2.unmap();
    // const GPUTextureView4 = GPUTexture2.createView({
    //     aspect: "all",
    //     dimension: "1d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgb10a2unorm",
    //     label: "GPUTextureView4"
    // });
    // GPUQueue11.writeBuffer(GPUBuffer0, 4, typedArray13);
    // const GPUSupportedFeatures7 = GPUAdapter1.features
    // GPURenderPassEncoder2.setPipeline(GPURenderPipeline5);
    // const GPUComputePipeline16 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline16",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder2.setBindGroup(0, GPUBindGroup8);
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline16);
    // const GPUComputePipeline17 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline17",
    //     layout: "auto"
    // });
    // const GPUComputePipeline18 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline18",
    //     layout: "auto"
    // });
    // const GPUQueue12 = GPUDevice0.queue
    // GPUQueue12.writeBuffer(GPUBuffer0, 0, typedArray14);
    // const GPUBindGroup9 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline16.bindGroup",
    //     layout: GPUComputePipeline16.getBindGroupLayout(0),
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
    // GPUComputePassEncoder2.setPipeline(GPUComputePipeline17);
    // GPUCommandEncoder4.copyBufferToBuffer(GPUBuffer1, 40, GPUBuffer0, 8, 0);
    // GPUComputePassEncoder2.end();
    // const GPUTexture7 = GPUDevice0.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "rgb10a2unorm",
    //     label: "GPUTexture7",
    //     size: {
    //         width: 2663,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgb10a2unorm"]
    // });
    // const GPUBindGroupLayout3 = GPUComputePipeline0.getBindGroupLayout(0);
    // const string28 = GPUQuerySet4.label
    // GPURenderPassEncoder2.setVertexBuffer(0, GPUBuffer0);
    // const string29 = GPUTextureView0.label
    // await GPUBuffer1.mapAsync();
    // const WGSLLanguageFeatures4 = navigator.gpu.wgslLanguageFeatures
    // const GPUComputePassEncoder4 = GPUCommandEncoder0.beginComputePass({
    //     label: "GPUComputePassEncoder4"
    // });
    // const GPUSupportedFeatures8 = GPUDevice0.features
    // const GPUComputePipeline19 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline19",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder4.setPipeline(GPUComputePipeline19);
    // const GPUComputePipeline20 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline20",
    //     layout: "auto"
    // });
    // const GPUQueue13 = GPUDevice0.queue
    // GPUQueue13.writeBuffer(GPUBuffer0, 0, typedArray15);
    // const GPUBindGroup10 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline19.bindGroup",
    //     layout: GPUComputePipeline19.getBindGroupLayout(0),
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
    // GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup10);
    // GPUComputePassEncoder4.dispatchWorkgroups(88, 241, 6);
    // const string30 = GPUComputePipeline4.label
    // const GPUSupportedLimits5 = GPUDevice0.limits
    // const GPUShaderModule6 = GPUDevice0.createShaderModule({
    //     label: "compute",
    //     code: shader6
    // });
    // const GPUSupportedFeatures9 = GPUDevice0.features
    // GPURenderPassEncoder2.end();
    // const GPUCommandBuffer4 = GPUCommandEncoder4.finish();
    // const GPUSupportedLimits6 = GPUDevice0.limits
    // const GPUTexture8 = GPUDevice0.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "rg8unorm",
    //     label: "GPUTexture8",
    //     size: {
    //         width: 3036,
    //         height: 3357,
    //         depthOrArrayLayers: 30
    //     },
    //     mipLevelCount: 11,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rg8unorm"]
    // });
    // const GPUTextureView5 = GPUTexture8.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 1,
    //     format: "rg8unorm",
    //     label: "GPUTextureView5"
    // });
    // const GPUQuerySet5 = GPUDevice0.createQuerySet({
    //     count: 1668,
    //     label: "GPUQuerySet5",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder3 = GPUCommandEncoder2.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.2880924022429574,
    //             g: 0.5016324597198593,
    //             b: 0.35479937491379643,
    //             a: 0.31877956381010353
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView5
    //     }],
    //     label: "GPURenderPassEncoder3",
    //     maxDrawCount: 4184036596,
    //     occlusionQuerySet: GPUQuerySet5
    // });
    // GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    // const WGSLLanguageFeatures5 = navigator.gpu.wgslLanguageFeatures
    // const string31 = GPUComputePassEncoder4.label
    // const string32 = GPUCommandEncoder0.label
    // GPUCommandEncoder0.copyBufferToBuffer(GPUBuffer1, 36, GPUBuffer0, 8, 0);
    // const string33 = GPUCommandEncoder2.label
    // const GPUAdapterInfo5 = GPUAdapter2.info
    // const string34 = GPUQueue3.label
    // const GPUComputePipeline21 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     },
    //     label: "GPUComputePipeline21",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup10);
    // GPUComputePassEncoder4.setPipeline(GPUComputePipeline21);
    // const GPUComputePipeline22 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     },
    //     label: "GPUComputePipeline22",
    //     layout: "auto"
    // });
    // const GPUBuffer5 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer5",
    //     mappedAtCreation: false,
    //     size: 48,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT
    // });
    // const GPUBuffer6 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer6",
    //     mappedAtCreation: false,
    //     size: 32,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDIRECT
    // });
    // const GPUQueue14 = GPUDevice0.queue
    // GPUQueue14.writeBuffer(GPUBuffer5, 0, typedArray16);
    // const GPUBindGroup11 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline21.bindGroup",
    //     layout: GPUComputePipeline21.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer5
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer6
    //         }
    //     }]
    // });
    // GPUComputePassEncoder4.setBindGroup(0, GPUBindGroup11);
    // GPUComputePassEncoder4.dispatchWorkgroups(198, 99, 60);
    // const string35 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUComputePipeline23 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline23",
    //     layout: "auto"
    // });
    // const GPUSupportedLimits7 = GPUDevice0.limits
    // const GPUShaderModule7 = GPUDevice0.createShaderModule({
    //     label: "compute",
    //     code: shader7
    // });
    // const string36 = await navigator.gpu.getPreferredCanvasFormat();
    // const string37 = GPUBuffer2.label
    // const GPUComputePipeline24 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline24",
    //     layout: "auto"
    // });
    // GPURenderPassEncoder3.setVertexBuffer(0, GPUBuffer0);
    // const GPUQuerySet6 = GPUDevice0.createQuerySet({
    //     count: 2306,
    //     label: "GPUQuerySet6",
    //     type: "occlusion"
    // });
    // GPUComputePassEncoder4.end();
    // const GPUCommandBuffer5 = GPUCommandEncoder0.finish();
    // const string38 = GPUQueue6.label
    // GPUQueue6.writeBuffer(GPUBuffer0, 4, typedArray17);
    // const GPUComputePipeline25 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline25",
    //     layout: "auto"
    // });
    // const GPUQueue15 = GPUDevice0.queue
    // GPUQueue15.writeBuffer(GPUBuffer0, 0, typedArray18);
    // const GPUBindGroup12 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline25.bindGroup",
    //     layout: GPUComputePipeline25.getBindGroupLayout(0),
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
    // const GPUComputePipeline26 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline26",
    //     layout: "auto"
    // });
    // const GPUTexture9 = GPUDevice0.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "r32sint",
    //     label: "GPUTexture9",
    //     size: {
    //         width: 593,
    //         height: 97,
    //         depthOrArrayLayers: 64
    //     },
    //     mipLevelCount: 8,
    //     usage: GPUTextureUsage.COPY_DST,
    //     viewFormats: ["r32sint"]
    // });
    // const GPUSupportedFeatures10 = GPUDevice0.features
    // const GPUBuffer7 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer7",
    //     mappedAtCreation: true,
    //     size: 228536016,
    //     usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM
    // });
    // const GPUDevice1 = await GPUAdapter2.requestDevice();
    // const GPUDevice2 = await GPUAdapter1.requestDevice();
    // const GPUCommandEncoder7 = GPUDevice2.createCommandEncoder({
    //     label: "GPUCommandEncoder7"
    // });
    // const GPUComputePassEncoder5 = GPUCommandEncoder7.beginComputePass({
    //     label: "GPUComputePassEncoder5"
    // });
    // GPUComputePassEncoder5.end();
    // const GPUQuerySet7 = GPUDevice2.createQuerySet({
    //     count: 41,
    //     label: "GPUQuerySet7",
    //     type: "occlusion"
    // });
    // const GPUShaderModule8 = GPUDevice0.createShaderModule({
    //     label: "fragment",
    //     code: shader8
    // });
    // await GPUBuffer5.mapAsync();
    // const string39 = GPURenderPassEncoder3.label
    // const GPURenderPipeline8 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule1,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "src",
    //                     srcFactor: "one-minus-src"
    //                 }
    //             },
    //             format: "rg8unorm",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.RED
    //         }]
    //     },
    //     label: "GPURenderPipeline8",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "front",
    //         frontFace: "ccw",
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule3
    //     }
    // });
    // GPURenderPassEncoder3.setPipeline(GPURenderPipeline8);
    // const string40 = GPURenderPipeline2.label
    // const string41 = GPUTextureView1.label
    // await GPUBuffer6.mapAsync();
    // const string42 = GPURenderPipeline4.label
    // const GPUSupportedFeatures11 = GPUAdapter0.features
    // const GPUTexture10 = GPUDevice2.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "rg16float",
    //     label: "GPUTexture10",
    //     size: {
    //         width: 1485,
    //         height: 273,
    //         depthOrArrayLayers: 17
    //     },
    //     mipLevelCount: 6,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT,
    //     viewFormats: ["rg16float"]
    // });
    // const GPUTextureView6 = GPUTexture10.createView({
    //     aspect: "all",
    //     dimension: "2d-array",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 2,
    //     format: "rg16float",
    //     label: "GPUTextureView6"
    // });
    // const GPUQuerySet8 = GPUDevice2.createQuerySet({
    //     count: 3127,
    //     label: "GPUQuerySet8",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder4 = GPUCommandEncoder7.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.9957737667962562,
    //             g: 0.4541030927891123,
    //             b: 0.4194334558719244,
    //             a: 0.5741467527588162
    //         },
    //         loadOp: "clear",
    //         storeOp: "discard",
    //         view: GPUTextureView6
    //     }],
    //     label: "GPURenderPassEncoder4",
    //     maxDrawCount: 26028866,
    //     occlusionQuerySet: GPUQuerySet8
    // });
    // GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 4, GPUBuffer5, 16, 4);
    // const GPUShaderModule9 = GPUDevice1.createShaderModule({
    //     label: "compute",
    //     code: shader9
    // });
    // GPURenderPassEncoder3.draw(9);
    // const string43 = GPUDevice2.label
    // const string44 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUCommandEncoder8 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder8"
    // });
    // const GPUCommandBuffer6 = GPUCommandEncoder8.finish();
    // GPUQueue9.submit([GPUCommandBuffer6]);
    // const GPUAdapterInfo6 = GPUAdapter0.info
    // const GPUCommandEncoder9 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder9"
    // });
    // const GPUComputePassEncoder6 = GPUCommandEncoder9.beginComputePass({
    //     label: "GPUComputePassEncoder6"
    // });
    // const GPUComputePipeline27 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline27",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder6.setPipeline(GPUComputePipeline27);
    // const GPUComputePipeline28 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline28",
    //     layout: "auto"
    // });
    // const GPUQueue16 = GPUDevice0.queue
    // GPUQueue16.writeBuffer(GPUBuffer0, 0, typedArray19);
    // const GPUBindGroup13 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline27.bindGroup",
    //     layout: GPUComputePipeline27.getBindGroupLayout(0),
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
    // GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup13);
    // GPUComputePassEncoder6.dispatchWorkgroups(41, 113, 27);
    // const GPUSupportedLimits8 = GPUAdapter3.limits
    // const string45 = GPUCommandEncoder2.label
    // const GPUTextureView7 = GPUTexture2.createView({
    //     aspect: "all",
    //     dimension: "1d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgb10a2unorm",
    //     label: "GPUTextureView7"
    // });
    // GPUComputePassEncoder6.setBindGroup(0, GPUBindGroup13);
    // const GPUAdapterInfo7 = GPUAdapter2.info
    // const string46 = GPUDevice2.label
    // const GPUSupportedFeatures12 = GPUDevice0.features
    // const GPUAdapterInfo8 = GPUAdapter3.info
    // const GPUBuffer8 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer8",
    //     mappedAtCreation: false,
    //     size: 262242312,
    //     usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.UNIFORM
    // });
    // GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer8);
    // const string47 = GPUCommandEncoder2.label
    // const GPUCommandEncoder10 = GPUDevice2.createCommandEncoder({
    //     label: "GPUCommandEncoder10"
    // });
    // const GPUComputePassEncoder7 = GPUCommandEncoder10.beginComputePass({
    //     label: "GPUComputePassEncoder7"
    // });
    // const GPUShaderModule10 = GPUDevice2.createShaderModule({
    //     label: "compute",
    //     code: shader10
    // });
    // const GPUComputePipeline29 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline29",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder7.setPipeline(GPUComputePipeline29);
    // const GPUComputePipeline30 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline30",
    //     layout: "auto"
    // });
    // const GPUBuffer9 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer9",
    //     mappedAtCreation: false,
    //     size: 8,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC
    // });
    // const GPUBuffer10 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer10",
    //     mappedAtCreation: false,
    //     size: 64,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    // });
    // const GPUQueue17 = GPUDevice2.queue
    // GPUQueue17.writeBuffer(GPUBuffer9, 0, typedArray20);
    // const GPUBindGroup14 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline29.bindGroup",
    //     layout: GPUComputePipeline29.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup14);
    // GPUComputePassEncoder7.dispatchWorkgroups(94, 134, 30);
    // GPUComputePassEncoder6.end();
    // const GPUSupportedLimits9 = GPUAdapter2.limits
    // const GPUBindGroupLayout4 = GPUComputePipeline29.getBindGroupLayout(0);
    // const GPUSupportedFeatures13 = GPUDevice1.features
    // GPURenderPassEncoder3.end();
    // GPUQueue3.writeBuffer(GPUBuffer0, 4, typedArray21);
    // const GPUShaderModule11 = GPUDevice2.createShaderModule({
    //     label: "fragment",
    //     code: shader11
    // });
    // const GPUShaderModule12 = GPUDevice2.createShaderModule({
    //     label: "vertex",
    //     code: shader12
    // });
    // const GPURenderPipeline9 = GPUDevice2.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule11,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "rg16float",
    //             writeMask: GPUColorWrite.ALPHA | GPUColorWrite.BLUE | GPUColorWrite.GREEN
    //         }]
    //     },
    //     label: "GPURenderPipeline9",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "cw",
    //         topology: "triangle-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule12
    //     }
    // });
    // GPURenderPassEncoder4.setPipeline(GPURenderPipeline9);
    // const GPUBindGroupLayout5 = GPUComputePipeline23.getBindGroupLayout(0);
    // GPUQueue13.writeBuffer(GPUBuffer5, 32, typedArray22);
    // const GPUSupportedLimits10 = GPUDevice0.limits
    // const string48 = GPUDevice1.label
    // const string49 = GPUComputePipeline12.label
    // const GPUQueue18 = GPUDevice0.queue
    // GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup14);
    // await GPUBuffer8.mapAsync();
    // const WGSLLanguageFeatures6 = navigator.gpu.wgslLanguageFeatures
    // const string50 = GPUDevice1.label
    // const GPUComputePipeline31 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline31",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup14);
    // GPUComputePassEncoder7.setPipeline(GPUComputePipeline31);
    // const GPUBuffer11 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer11",
    //     mappedAtCreation: true,
    //     size: 185582784,
    //     usage: GPUBufferUsage.MAP_WRITE | GPUBufferUsage.COPY_SRC
    // });
    // const GPUTexture11 = GPUDevice1.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "bgra8unorm",
    //     label: "GPUTexture11",
    //     size: {
    //         width: 1057,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["bgra8unorm"]
    // });
    // const GPUDevice3 = await GPUAdapter3.requestDevice();
    // GPUCommandEncoder7.copyBufferToBuffer(GPUBuffer10, 8, GPUBuffer8, 76192188, 36);
    // const ArrayBuffer3 = GPUBuffer11.getMappedRange();
    // const string51 = GPUQuerySet7.label
    // const ArrayBuffer4 = GPUBuffer6.getMappedRange();
    // GPUQueue4.writeBuffer(GPUBuffer0, 4, typedArray23);
    // GPURenderPassEncoder4.setVertexBuffer(0, GPUBuffer8);
    // const GPUComputePipeline32 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline32",
    //     layout: "auto"
    // });
    // const GPUQueue19 = GPUDevice0.queue
    // GPUQueue19.writeBuffer(GPUBuffer0, 0, typedArray24);
    // const GPUBindGroup15 = GPUDevice0.createBindGroup({
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
    // GPUBuffer5.unmap();
    // const GPUComputePipeline33 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline33",
    //     layout: "auto"
    // });
    // const GPUQueue20 = GPUDevice2.queue
    // GPUQueue20.writeBuffer(GPUBuffer9, 0, typedArray25);
    // const GPUBindGroup16 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline33.bindGroup",
    //     layout: GPUComputePipeline33.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // const GPUAdapterInfo9 = GPUAdapter3.info
    // const string52 = GPUBuffer6.label
    // const GPUBuffer12 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer12",
    //     mappedAtCreation: false,
    //     size: 153525204,
    //     usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    // });
    // const GPUTextureView8 = GPUTexture5.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "r16uint",
    //     label: "GPUTextureView8"
    // });
    // const GPUQueue21 = GPUDevice1.queue
    // const WGSLLanguageFeatures7 = navigator.gpu.wgslLanguageFeatures
    // const GPUAdapter4 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUDevice4 = await GPUAdapter4.requestDevice();
    // const string53 = GPUCommandEncoder7.label
    // GPUQueue19.writeBuffer(GPUBuffer5, 44, typedArray26);
    // const GPUCommandEncoder11 = GPUDevice2.createCommandEncoder({
    //     label: "GPUCommandEncoder11"
    // });
    // const boolean4 = GPUAdapter3.isFallbackAdapter
    // const GPUSupportedLimits11 = GPUAdapter2.limits
    // GPUCommandEncoder2.copyBufferToBuffer(GPUBuffer0, 8, GPUBuffer0, 0, 0);
    // GPUQueue18.writeBuffer(GPUBuffer5, 32, typedArray27);
    // const GPUComputePipeline34 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline34",
    //     layout: "auto"
    // });
    // const GPUSupportedLimits12 = GPUAdapter4.limits
    // const GPUTexture12 = GPUDevice3.createTexture({
    //     dimension: "2d",
    //     sampleCount: 4,
    //     format: "r16uint",
    //     label: "GPUTexture12",
    //     size: {
    //         width: 1448,
    //         height: 3868,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["r16uint"]
    // });
    // const ArrayBuffer5 = GPUBuffer7.getMappedRange();
    // const GPUTexture13 = GPUDevice3.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "rg8unorm",
    //     label: "GPUTexture13",
    //     size: {
    //         width: 178,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rg8unorm"]
    // });
    // const GPUComputePipeline35 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     },
    //     label: "GPUComputePipeline35",
    //     layout: "auto"
    // });
    // const GPUBuffer13 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer13",
    //     mappedAtCreation: false,
    //     size: 32,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST
    // });
    // const GPUQueue22 = GPUDevice0.queue
    // GPUQueue22.writeBuffer(GPUBuffer5, 0, typedArray28);
    // const GPUBindGroup17 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline35.bindGroup",
    //     layout: GPUComputePipeline35.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer5
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer13
    //         }
    //     }]
    // });
    // const string54 = GPURenderPipeline5.label
    // const string55 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUComputePipeline36 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline36",
    //     layout: "auto"
    // });
    // const GPUComputePipeline37 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline37",
    //     layout: "auto"
    // });
    // const GPUQueue23 = GPUDevice2.queue
    // GPUQueue23.writeBuffer(GPUBuffer9, 0, typedArray29);
    // const GPUBindGroup18 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline31.bindGroup",
    //     layout: GPUComputePipeline31.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup18);
    // GPUComputePassEncoder7.setPipeline(GPUComputePipeline36);
    // const GPUComputePipeline38 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline38",
    //     layout: "auto"
    // });
    // const GPUQueue24 = GPUDevice2.queue
    // GPUQueue24.writeBuffer(GPUBuffer9, 0, typedArray30);
    // const GPUBindGroup19 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline36.bindGroup",
    //     layout: GPUComputePipeline36.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder7.setBindGroup(0, GPUBindGroup19);
    // GPUComputePassEncoder7.dispatchWorkgroups(227, 8, 3);
    // GPURenderPassEncoder4.end();
    // const GPUTexture14 = GPUDevice2.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgba8unorm-srgb",
    //     label: "GPUTexture14",
    //     size: {
    //         width: 361,
    //         height: 420,
    //         depthOrArrayLayers: 42
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["rgba8unorm-srgb"]
    // });
    // const GPUTextureView9 = GPUTexture14.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgba8unorm-srgb",
    //     label: "GPUTextureView9"
    // });
    // const GPUQuerySet9 = GPUDevice2.createQuerySet({
    //     count: 1772,
    //     label: "GPUQuerySet9",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder5 = GPUCommandEncoder11.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.5008835501414322,
    //             g: 0.12872894980449412,
    //             b: 0.10851398044397731,
    //             a: 0.8269316193469559
    //         },
    //         loadOp: "load",
    //         storeOp: "store",
    //         view: GPUTextureView9,
    //         depthSlice: 0
    //     }],
    //     label: "GPURenderPassEncoder5",
    //     maxDrawCount: 1055361630,
    //     occlusionQuerySet: GPUQuerySet9
    // });
    // const GPURenderPipeline10 = GPUDevice2.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule11,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "rgba8unorm-srgb",
    //             writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
    //         }]
    //     },
    //     label: "GPURenderPipeline10",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "cw",
    //         topology: "triangle-strip"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule12
    //     }
    // });
    // GPURenderPassEncoder5.setPipeline(GPURenderPipeline10);
    // GPURenderPassEncoder5.draw(3);
    // GPUComputePassEncoder7.end();
    // const GPUSupportedFeatures14 = GPUDevice1.features
    // const string56 = GPURenderPipeline7.label
    // const GPUComputePassEncoder8 = GPUCommandEncoder9.beginComputePass({
    //     label: "GPUComputePassEncoder8"
    // });
    // const GPUComputePipeline39 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline39",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder8.setPipeline(GPUComputePipeline39);
    // const string57 = GPUQuerySet6.label
    // const GPUCommandEncoder12 = GPUDevice4.createCommandEncoder({
    //     label: "GPUCommandEncoder12"
    // });
    // GPURenderPassEncoder5.setVertexBuffer(0, GPUBuffer8);
    // const GPUComputePipeline40 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule9
    //     },
    //     label: "GPUComputePipeline40",
    //     layout: "auto"
    // });
    // const string58 = GPUTextureView6.label
    // const GPUBindGroupLayout6 = GPUComputePipeline7.getBindGroupLayout(0);
    // const WGSLLanguageFeatures8 = navigator.gpu.wgslLanguageFeatures
    // const string59 = await navigator.gpu.getPreferredCanvasFormat();
    // const string60 = GPUComputePipeline0.label
    // const boolean5 = GPUAdapter3.isFallbackAdapter
    // GPUComputePassEncoder8.end();
    // const GPUCommandBuffer7 = GPUCommandEncoder9.finish();
    // const string61 = GPURenderPassEncoder5.label
    // const GPUComputePipeline41 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline41",
    //     layout: "auto"
    // });
    // const GPUQuerySet10 = GPUDevice3.createQuerySet({
    //     count: 2514,
    //     label: "GPUQuerySet10",
    //     type: "occlusion"
    // });
    // const GPUAdapter5 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const GPURenderPipeline11 = GPUDevice0.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule8,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "src-alpha",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "rg8unorm",
    //             writeMask: GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline11",
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
    //         module: GPUShaderModule3
    //     }
    // });
    // const GPUComputePipeline42 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline42",
    //     layout: "auto"
    // });
    // const GPUQueue25 = GPUDevice0.queue
    // GPUQueue25.writeBuffer(GPUBuffer0, 0, typedArray31);
    // const GPUBindGroup20 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline42.bindGroup",
    //     layout: GPUComputePipeline42.getBindGroupLayout(0),
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
    // const GPUCommandBuffer8 = GPUCommandEncoder10.finish();
    // GPURenderPassEncoder5.setPipeline(GPURenderPipeline10);
    // const GPUShaderModule13 = GPUDevice3.createShaderModule({
    //     label: "fragment",
    //     code: shader13
    // });
    // GPUQueue4.writeBuffer(GPUBuffer13, 12, typedArray32);
    // const string62 = GPUDevice2.label
    // const string63 = await navigator.gpu.getPreferredCanvasFormat();
    // const GPUBuffer14 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer14",
    //     mappedAtCreation: false,
    //     size: 201147776,
    //     usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    // });
    // const GPUBuffer15 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer15",
    //     mappedAtCreation: false,
    //     size: 256442436,
    //     usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM
    // });
    // GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer14, 166589848, GPUBuffer15, 232577804, 6670444);
    // const string64 = GPUBuffer7.label
    // GPURenderPassEncoder5.end();
    // const GPUBuffer16 = GPUDevice0.createBuffer({
    //     label: "GPUBuffer16",
    //     mappedAtCreation: true,
    //     size: 264425168,
    //     usage: GPUBufferUsage.MAP_WRITE
    // });
    // GPUBuffer2.unmap();
    // const GPUBuffer17 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer17",
    //     mappedAtCreation: false,
    //     size: 7630268,
    //     usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    // });
    // const GPUComputePassEncoder9 = GPUCommandEncoder11.beginComputePass({
    //     label: "GPUComputePassEncoder9"
    // });
    // const GPUComputePipeline43 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline43",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder9.setPipeline(GPUComputePipeline43);
    // const GPUQueue26 = GPUDevice4.queue
    // const GPUTexture15 = GPUDevice4.createTexture({
    //     dimension: "2d",
    //     sampleCount: 4,
    //     format: "r8uint",
    //     label: "GPUTexture15",
    //     size: {
    //         width: 2600,
    //         height: 2071,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["r8uint"]
    // });
    // GPUComputePassEncoder9.end();
    // const GPUAdapterInfo10 = GPUAdapter2.info
    // const GPUBindGroupLayout7 = GPUComputePipeline34.getBindGroupLayout(0);
    // const string65 = GPUTextureView0.label
    // const GPUCommandBuffer9 = GPUCommandEncoder2.finish();
    // const GPUSupportedLimits13 = GPUAdapter3.limits
    // const GPUBindGroupLayout8 = GPUComputePipeline30.getBindGroupLayout(0);
    // const GPUTexture16 = GPUDevice2.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "rgb10a2unorm",
    //     label: "GPUTexture16",
    //     size: {
    //         width: 1443,
    //         height: 2562,
    //         depthOrArrayLayers: 5
    //     },
    //     mipLevelCount: 12,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rgb10a2unorm"]
    // });
    // const GPUTextureView10 = GPUTexture16.createView({
    //     aspect: "all",
    //     dimension: "2d-array",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 2,
    //     format: "rgb10a2unorm",
    //     label: "GPUTextureView10"
    // });
    // const GPUQuerySet11 = GPUDevice2.createQuerySet({
    //     count: 1948,
    //     label: "GPUQuerySet11",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder6 = GPUCommandEncoder11.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.4525129108221613,
    //             g: 0.09689619400491045,
    //             b: 0.3458666853403485,
    //             a: 0.7462674015718891
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView10
    //     }],
    //     label: "GPURenderPassEncoder6",
    //     maxDrawCount: 3318774496,
    //     occlusionQuerySet: GPUQuerySet11
    // });
    // const string66 = GPURenderPassEncoder6.label
    // const GPUComputePipeline44 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline44",
    //     layout: "auto"
    // });
    // GPURenderPassEncoder6.end();
    // const GPUAdapter6 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const GPUQueue27 = GPUDevice4.queue
    // const GPUComputePipeline45 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline45",
    //     layout: "auto"
    // });
    // const GPUQueue28 = GPUDevice0.queue
    // GPUQueue28.writeBuffer(GPUBuffer0, 0, typedArray33);
    // const GPUBindGroup21 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline45.bindGroup",
    //     layout: GPUComputePipeline45.getBindGroupLayout(0),
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
    // const GPUQueue29 = GPUDevice0.queue
    // const GPUSupportedLimits14 = GPUDevice1.limits
    // const string67 = GPUQueue23.label
    // const string68 = GPUDevice4.label
    // const GPUBindGroupLayout9 = GPUComputePipeline23.getBindGroupLayout(0);
    // const GPUShaderModule14 = GPUDevice1.createShaderModule({
    //     label: "fragment",
    //     code: shader14
    // });
    // const string69 = GPURenderPipeline7.label
    // const GPUShaderModule15 = GPUDevice3.createShaderModule({
    //     label: "compute",
    //     code: shader15
    // });
    // const GPUComputePipeline46 = GPUDevice3.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule15
    //     },
    //     label: "GPUComputePipeline46",
    //     layout: "auto"
    // });
    // GPUCommandEncoder7.copyBufferToBuffer(GPUBuffer10, 16, GPUBuffer10, 56, 8);
    // const string70 = await navigator.gpu.getPreferredCanvasFormat();
    // const string71 = GPUComputePipeline11.label
    // const GPUAdapter7 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUSupportedLimits15 = GPUDevice0.limits
    // const ArrayBuffer6 = GPUBuffer16.getMappedRange();
    // const GPUComputePipeline47 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule9
    //     },
    //     label: "GPUComputePipeline47",
    //     layout: "auto"
    // });
    // const GPUComputePipeline48 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule0
    //     },
    //     label: "GPUComputePipeline48",
    //     layout: "auto"
    // });
    // const GPUQueue30 = GPUDevice0.queue
    // GPUQueue30.writeBuffer(GPUBuffer0, 0, typedArray34);
    // const GPUBindGroup22 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline48.bindGroup",
    //     layout: GPUComputePipeline48.getBindGroupLayout(0),
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
    // const GPUComputePassEncoder10 = GPUCommandEncoder7.beginComputePass({
    //     label: "GPUComputePassEncoder10"
    // });
    // const string72 = GPUComputePassEncoder10.label
    // const GPUTexture17 = GPUDevice3.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "r8snorm",
    //     label: "GPUTexture17",
    //     size: {
    //         width: 3481,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["r8snorm"]
    // });
    // const GPUTexture18 = GPUDevice4.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "bgra8unorm-srgb",
    //     label: "GPUTexture18",
    //     size: {
    //         width: 63,
    //         height: 974,
    //         depthOrArrayLayers: 56
    //     },
    //     mipLevelCount: 9,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["bgra8unorm"]
    // });
    // const GPUTextureView11 = GPUTexture18.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm",
    //     label: "GPUTextureView11"
    // });
    // const GPUQuerySet12 = GPUDevice4.createQuerySet({
    //     count: 3691,
    //     label: "GPUQuerySet12",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder7 = GPUCommandEncoder12.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.4906184732280572,
    //             g: 0.18564279772601122,
    //             b: 0.4691237971833656,
    //             a: 0.12557301815246213
    //         },
    //         loadOp: "clear",
    //         storeOp: "store",
    //         view: GPUTextureView11,
    //         depthSlice: 42
    //     }],
    //     label: "GPURenderPassEncoder7",
    //     maxDrawCount: 1039837507,
    //     occlusionQuerySet: GPUQuerySet12
    // });
    // const GPUShaderModule16 = GPUDevice4.createShaderModule({
    //     label: "fragment",
    //     code: shader16
    // });
    // const GPUShaderModule17 = GPUDevice4.createShaderModule({
    //     label: "vertex",
    //     code: shader17
    // });
    // const GPURenderPipeline12 = GPUDevice4.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule16,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "subtract",
    //                     dstFactor: "one",
    //                     srcFactor: "one-minus-dst"
    //                 }
    //             },
    //             format: "bgra8unorm",
    //             writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALPHA
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
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule17
    //     }
    // });
    // GPURenderPassEncoder7.setPipeline(GPURenderPipeline12);
    // GPURenderPassEncoder7.draw(8);
    // const WGSLLanguageFeatures9 = navigator.gpu.wgslLanguageFeatures
    // const string73 = GPURenderPipeline8.label
    // GPUComputePassEncoder10.end();
    // const GPUShaderModule18 = GPUDevice1.createShaderModule({
    //     label: "vertex",
    //     code: shader18
    // });
    // const GPURenderPipeline13 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule14,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "subtract",
    //                     dstFactor: "src-alpha",
    //                     srcFactor: "dst"
    //                 },
    //                 color: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "rgb10a2unorm",
    //             writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline13",
    //     layout: "auto",
    //     multisample: {
    //         count: 4
    //     },
    //     primitive: {
    //         cullMode: "back",
    //         frontFace: "cw",
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule18
    //     }
    // });
    // const GPUComputePassEncoder11 = GPUCommandEncoder11.beginComputePass({
    //     label: "GPUComputePassEncoder11"
    // });
    // GPUComputePassEncoder11.end();
    // const GPUTexture19 = GPUDevice2.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "bgra8unorm-srgb",
    //     label: "GPUTexture19",
    //     size: {
    //         width: 112,
    //         height: 937,
    //         depthOrArrayLayers: 58
    //     },
    //     mipLevelCount: 3,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
    //     viewFormats: ["bgra8unorm"]
    // });
    // const GPUTextureView12 = GPUTexture19.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 2,
    //     format: "bgra8unorm",
    //     label: "GPUTextureView12"
    // });
    // const GPUQuerySet13 = GPUDevice2.createQuerySet({
    //     count: 3601,
    //     label: "GPUQuerySet13",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder8 = GPUCommandEncoder7.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.2235779283191507,
    //             g: 0.9102157508143525,
    //             b: 0.7910846053303674,
    //             a: 0.8686731605232615
    //         },
    //         loadOp: "clear",
    //         storeOp: "store",
    //         view: GPUTextureView12,
    //         depthSlice: 12
    //     }],
    //     label: "GPURenderPassEncoder8",
    //     maxDrawCount: 3918417549,
    //     occlusionQuerySet: GPUQuerySet13
    // });
    // const GPUShaderModule19 = GPUDevice3.createShaderModule({
    //     label: "vertex",
    //     code: shader19
    // });
    // const GPURenderPipeline14 = GPUDevice3.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule13,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "subtract",
    //                     dstFactor: "one-minus-constant",
    //                     srcFactor: "dst-alpha"
    //                 },
    //                 color: {
    //                     operation: "add",
    //                     dstFactor: "src-alpha",
    //                     srcFactor: "one-minus-src-alpha"
    //                 }
    //             },
    //             format: "rgb10a2unorm",
    //             writeMask: GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.GREEN
    //         }]
    //     },
    //     label: "GPURenderPipeline14",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "back",
    //         frontFace: "cw",
    //         topology: "triangle-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule19
    //     }
    // });
    // const GPUSupportedFeatures15 = GPUDevice1.features
    // const string74 = GPUTextureView11.label
    // const GPUAdapterInfo11 = GPUAdapter1.info
    // const GPUQuerySet14 = GPUDevice3.createQuerySet({
    //     count: 3262,
    //     label: "GPUQuerySet14",
    //     type: "occlusion"
    // });
    // const GPUComputePassEncoder12 = GPUCommandEncoder11.beginComputePass({
    //     label: "GPUComputePassEncoder12"
    // });
    // const GPUComputePipeline49 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline49",
    //     layout: "auto"
    // });
    // const GPUQueue31 = GPUDevice2.queue
    // GPUQueue31.writeBuffer(GPUBuffer9, 0, typedArray35);
    // const GPUBindGroup23 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline49.bindGroup",
    //     layout: GPUComputePipeline49.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder12.setBindGroup(0, GPUBindGroup23);
    // const boolean6 = GPUAdapter2.isFallbackAdapter
    // const GPUQuerySet15 = GPUDevice3.createQuerySet({
    //     count: 3059,
    //     label: "GPUQuerySet15",
    //     type: "occlusion"
    // });
    // const GPUSupportedFeatures16 = GPUDevice0.features
    // const string75 = GPUQueue29.label
    // GPUComputePassEncoder12.end();
    // const GPUSupportedLimits16 = GPUDevice0.limits
    // const GPUTextureView13 = GPUTexture18.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 6,
    //     baseMipLevel: 2,
    //     format: "bgra8unorm-srgb",
    //     label: "GPUTextureView13"
    // });
    // const GPUComputePipeline50 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     },
    //     label: "GPUComputePipeline50",
    //     layout: "auto"
    // });
    // const GPUQueue32 = GPUDevice0.queue
    // GPUQueue32.writeBuffer(GPUBuffer5, 0, typedArray36);
    // const GPUBindGroup24 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline50.bindGroup",
    //     layout: GPUComputePipeline50.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer5
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer13
    //         }
    //     }]
    // });
    // const WGSLLanguageFeatures10 = navigator.gpu.wgslLanguageFeatures
    // const string76 = GPURenderPassEncoder8.label
    // const GPUComputePassEncoder13 = GPUCommandEncoder11.beginComputePass({
    //     label: "GPUComputePassEncoder13"
    // });
    // const GPUQuerySet16 = GPUDevice3.createQuerySet({
    //     count: 1176,
    //     label: "GPUQuerySet16",
    //     type: "occlusion"
    // });
    // const GPUSupportedFeatures17 = GPUDevice2.features
    // const GPUQueue33 = GPUDevice0.queue
    // const GPUSupportedLimits17 = GPUAdapter5.limits
    // const GPUCommandEncoder13 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder13"
    // });
    // const GPUTexture20 = GPUDevice1.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgb10a2unorm",
    //     label: "GPUTexture20",
    //     size: {
    //         width: 641,
    //         height: 587,
    //         depthOrArrayLayers: 64
    //     },
    //     mipLevelCount: 6,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgb10a2unorm"]
    // });
    // const GPUTextureView14 = GPUTexture20.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgb10a2unorm",
    //     label: "GPUTextureView14"
    // });
    // const GPUQuerySet17 = GPUDevice1.createQuerySet({
    //     count: 565,
    //     label: "GPUQuerySet17",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder9 = GPUCommandEncoder13.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.5473788090258452,
    //             g: 0.5927277077247507,
    //             b: 0.0013109883603567019,
    //             a: 0.28245709096280947
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView14,
    //         depthSlice: 11
    //     }],
    //     label: "GPURenderPassEncoder9",
    //     maxDrawCount: 1604558237,
    //     occlusionQuerySet: GPUQuerySet17
    // });
    // const GPUComputePipeline51 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline51",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder13.setPipeline(GPUComputePipeline51);
    // const GPUComputePipeline52 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline52",
    //     layout: "auto"
    // });
    // const GPUQueue34 = GPUDevice2.queue
    // GPUQueue34.writeBuffer(GPUBuffer9, 0, typedArray37);
    // const GPUBindGroup25 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline51.bindGroup",
    //     layout: GPUComputePipeline51.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder13.setBindGroup(0, GPUBindGroup25);
    // const string77 = GPUCommandEncoder13.label
    // const GPUQueue35 = GPUDevice2.queue
    // const string78 = GPURenderPipeline8.label
    // const string79 = GPURenderPipeline0.label
    // const ArrayBuffer7 = GPUBuffer8.getMappedRange();
    // const GPURenderPipeline15 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule14,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "reverse-subtract",
    //                     dstFactor: "one-minus-dst",
    //                     srcFactor: "one-minus-src"
    //                 }
    //             },
    //             format: "rgb10a2unorm",
    //             writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALPHA | GPUColorWrite.ALL
    //         }]
    //     },
    //     label: "GPURenderPipeline15",
    //     layout: "auto",
    //     multisample: {
    //         count: 1
    //     },
    //     primitive: {
    //         cullMode: "none",
    //         frontFace: "cw",
    //         topology: "line-list"
    //     },
    //     vertex: {
    //         entryPoint: "main",
    //         module: GPUShaderModule18
    //     }
    // });
    // GPURenderPassEncoder9.setPipeline(GPURenderPipeline15);
    // const GPUCommandEncoder14 = GPUDevice3.createCommandEncoder({
    //     label: "GPUCommandEncoder14"
    // });
    // const GPUTexture21 = GPUDevice3.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rg8unorm",
    //     label: "GPUTexture21",
    //     size: {
    //         width: 658,
    //         height: 125,
    //         depthOrArrayLayers: 13
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rg8unorm"]
    // });
    // const GPUTextureView15 = GPUTexture21.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rg8unorm",
    //     label: "GPUTextureView15"
    // });
    // const GPUQuerySet18 = GPUDevice3.createQuerySet({
    //     count: 2032,
    //     label: "GPUQuerySet18",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder10 = GPUCommandEncoder14.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.8937477662876658,
    //             g: 0.02382378015923281,
    //             b: 0.5120830883062698,
    //             a: 0.08191127797362086
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView15,
    //         depthSlice: 6
    //     }],
    //     label: "GPURenderPassEncoder10",
    //     maxDrawCount: 1649507450,
    //     occlusionQuerySet: GPUQuerySet18
    // });
    // const string80 = GPUComputePipeline41.label
    // GPUComputePassEncoder13.end();
    // const GPUSupportedLimits18 = GPUAdapter1.limits
    // GPUQueue26.writeBuffer(GPUBuffer15, 144883336, typedArray38);
    // const GPUBuffer18 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer18",
    //     mappedAtCreation: false,
    //     size: 135359696,
    //     usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    // });
    // const GPUBuffer19 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer19",
    //     mappedAtCreation: false,
    //     size: 87938524,
    //     usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    // });
    // GPUCommandEncoder14.copyBufferToBuffer(GPUBuffer18, 74340664, GPUBuffer19, 66348524, 20804960);
    // GPUCommandEncoder12.copyBufferToBuffer(GPUBuffer14, 110888332, GPUBuffer15, 171760576, 33766784);
    // const string81 = GPUQuerySet15.label
    // const string82 = GPUQuerySet17.label
    // GPURenderPassEncoder7.end();
    // const GPUCommandBuffer10 = GPUCommandEncoder12.finish();
    // GPUQueue25.writeBuffer(GPUBuffer5, 44, typedArray39);
    // const string83 = GPUTextureView14.label
    // const GPUSupportedFeatures18 = GPUAdapter1.features
    // const GPUAdapter8 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const GPUComputePassEncoder14 = GPUCommandEncoder11.beginComputePass({
    //     label: "GPUComputePassEncoder14"
    // });
    // GPUComputePassEncoder14.end();
    // const GPUAdapter9 = await navigator.gpu.requestAdapter({
    //     powerPreference: "low-power"
    // });
    // const GPUSupportedFeatures19 = GPUAdapter5.features
    // const GPUCommandEncoder15 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder15"
    // });
    // const GPUCommandBuffer11 = GPUCommandEncoder15.finish();
    // GPUQueue15.submit([GPUCommandBuffer11]);
    // const GPUCommandEncoder16 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder16"
    // });
    // const GPUCommandBuffer12 = GPUCommandEncoder16.finish();
    // GPUQueue10.submit([GPUCommandBuffer12]);
    // const string84 = GPUCommandEncoder14.label
    // const string85 = GPUQuerySet14.label
    // const GPUComputePipeline53 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     },
    //     label: "GPUComputePipeline53",
    //     layout: "auto"
    // });
    // const GPUQueue36 = GPUDevice0.queue
    // GPUQueue36.writeBuffer(GPUBuffer5, 0, typedArray40);
    // const GPUBindGroup26 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline53.bindGroup",
    //     layout: GPUComputePipeline53.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer5
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer13
    //         }
    //     }]
    // });
    // const string86 = GPUBuffer5.label
    // const GPUSupportedLimits19 = GPUAdapter3.limits
    // const GPUBindGroupLayout10 = GPUComputePipeline53.getBindGroupLayout(0);
    // const GPUCommandBuffer13 = GPUCommandEncoder11.finish();
    // const GPUCommandEncoder17 = GPUDevice3.createCommandEncoder({
    //     label: "GPUCommandEncoder17"
    // });
    // const GPUComputePassEncoder15 = GPUCommandEncoder17.beginComputePass({
    //     label: "GPUComputePassEncoder15"
    // });
    // const GPUComputePipeline54 = GPUDevice3.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule15
    //     },
    //     label: "GPUComputePipeline54",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder15.setPipeline(GPUComputePipeline54);
    // const GPUQueue37 = GPUDevice0.queue
    // const GPUBuffer20 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer20",
    //     mappedAtCreation: false,
    //     size: 203949736,
    //     usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.INDIRECT
    // });
    // GPUCommandEncoder13.copyBufferToBuffer(GPUBuffer12, 899164, GPUBuffer20, 198563888, 946116);
    // const GPUTexture22 = GPUDevice2.createTexture({
    //     dimension: "2d",
    //     sampleCount: 1,
    //     format: "rgba8unorm",
    //     label: "GPUTexture22",
    //     size: {
    //         width: 2729,
    //         height: 1024,
    //         depthOrArrayLayers: 6
    //     },
    //     mipLevelCount: 7,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rgba8unorm"]
    // });
    // const GPUShaderModule20 = GPUDevice4.createShaderModule({
    //     label: "compute",
    //     code: shader20
    // });
    // const GPUComputePipeline55 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule20
    //     },
    //     label: "GPUComputePipeline55",
    //     layout: "auto"
    // });
    // const GPUBuffer21 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer21",
    //     mappedAtCreation: false,
    //     size: 8,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX
    // });
    // const GPUBuffer22 = GPUDevice4.createBuffer({
    //     label: "GPUBuffer22",
    //     mappedAtCreation: false,
    //     size: 64,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST
    // });
    // const GPUQueue38 = GPUDevice4.queue
    // GPUQueue38.writeBuffer(GPUBuffer21, 0, typedArray41);
    // const GPUBindGroup27 = GPUDevice4.createBindGroup({
    //     label: "GPUComputePipeline55.bindGroup",
    //     layout: GPUComputePipeline55.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer21
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer22
    //         }
    //     }]
    // });
    // GPURenderPassEncoder8.end();
    // const GPUTexture23 = GPUDevice2.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgba16uint",
    //     label: "GPUTexture23",
    //     size: {
    //         width: 448,
    //         height: 180,
    //         depthOrArrayLayers: 6
    //     },
    //     mipLevelCount: 6,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
    //     viewFormats: ["rgba16uint"]
    // });
    // const GPURenderPipeline16 = GPUDevice3.createRenderPipeline({
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
    //             format: "rg8unorm",
    //             writeMask: GPUColorWrite.ALPHA
    //         }]
    //     },
    //     label: "GPURenderPipeline16",
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
    //         module: GPUShaderModule19
    //     }
    // });
    // GPURenderPassEncoder10.setPipeline(GPURenderPipeline16);
    // GPURenderPassEncoder10.draw(5);
    // const GPUCommandEncoder18 = GPUDevice2.createCommandEncoder({
    //     label: "GPUCommandEncoder18"
    // });
    // const GPUBuffer23 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer23",
    //     mappedAtCreation: false,
    //     size: 238540016,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.VERTEX
    // });
    // const string87 = GPUTextureView15.label
    // const GPUAdapterInfo12 = GPUAdapter5.info
    // const string88 = GPUCommandEncoder17.label
    // const GPUAdapter10 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // await GPUBuffer19.mapAsync();
    // const GPUSupportedFeatures20 = GPUAdapter5.features
    // const string89 = GPUComputePassEncoder15.label
    // const GPUQuerySet19 = GPUDevice3.createQuerySet({
    //     count: 90,
    //     label: "GPUQuerySet19",
    //     type: "occlusion"
    // });
    // const GPUComputePipeline56 = GPUDevice3.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule15
    //     },
    //     label: "GPUComputePipeline56",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder15.setPipeline(GPUComputePipeline56);
    // const GPUQuerySet20 = GPUDevice2.createQuerySet({
    //     count: 3316,
    //     label: "GPUQuerySet20",
    //     type: "occlusion"
    // });
    // const GPUComputePassEncoder16 = GPUCommandEncoder7.beginComputePass({
    //     label: "GPUComputePassEncoder16"
    // });
    // const GPUCommandEncoder19 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder19"
    // });
    // const GPURenderPipeline17 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule14,
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
    //     label: "GPURenderPipeline17",
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
    //         module: GPUShaderModule18
    //     }
    // });
    // const GPUComputePipeline57 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule7
    //     },
    //     label: "GPUComputePipeline57",
    //     layout: "auto"
    // });
    // const GPUQueue39 = GPUDevice0.queue
    // GPUQueue39.writeBuffer(GPUBuffer0, 0, typedArray42);
    // const GPUBindGroup28 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline57.bindGroup",
    //     layout: GPUComputePipeline57.getBindGroupLayout(0),
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
    // const string90 = GPURenderPassEncoder9.label
    // const GPUCommandBuffer14 = GPUCommandEncoder18.finish();
    // const GPUBuffer24 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer24",
    //     mappedAtCreation: false,
    //     size: 34974632,
    //     usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    // });
    // const string91 = GPUQuerySet1.label
    // const GPUSupportedFeatures21 = GPUAdapter3.features
    // await GPUBuffer5.mapAsync();
    // const GPUCommandEncoder20 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder20"
    // });
    // const GPURenderPipeline18 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule14,
    //         targets: [{
    //             blend: {
    //                 alpha: {
    //                     operation: "min",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 },
    //                 color: {
    //                     operation: "max",
    //                     dstFactor: "one",
    //                     srcFactor: "one"
    //                 }
    //             },
    //             format: "bgra8unorm-srgb",
    //             writeMask: GPUColorWrite.BLUE
    //         }]
    //     },
    //     label: "GPURenderPipeline18",
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
    //         module: GPUShaderModule18
    //     }
    // });
    // const GPUTexture24 = GPUDevice0.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "rgb10a2uint",
    //     label: "GPUTexture24",
    //     size: {
    //         width: 985,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgb10a2uint"]
    // });
    // const GPUSupportedFeatures22 = GPUAdapter0.features
    // const string92 = GPUBuffer7.label
    // const GPUTextureView16 = GPUTexture0.createView({
    //     aspect: "all",
    //     dimension: "2d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "bgra8unorm",
    //     label: "GPUTextureView16"
    // });
    // const GPUSupportedFeatures23 = GPUDevice3.features
    // const string93 = GPUComputePipeline35.label
    // const GPUCommandEncoder21 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder21"
    // });
    // GPURenderPassEncoder9.setPipeline(GPURenderPipeline15);
    // GPUComputePassEncoder15.end();
    // GPURenderPassEncoder9.setVertexBuffer(0, GPUBuffer20);
    // const GPUComputePipeline58 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline58",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder16.setPipeline(GPUComputePipeline58);
    // GPURenderPassEncoder10.draw(2);
    // const string94 = GPURenderPassEncoder9.label
    // GPUBuffer1.unmap();
    // const GPUQuerySet21 = GPUDevice3.createQuerySet({
    //     count: 1071,
    //     label: "GPUQuerySet21",
    //     type: "occlusion"
    // });
    // const string95 = GPUCommandEncoder14.label
    // GPURenderPassEncoder10.end();
    // const string96 = await navigator.gpu.getPreferredCanvasFormat();
    // GPUBuffer24.unmap();
    // const string97 = GPUBuffer23.label
    // const GPUSupportedLimits20 = GPUAdapter6.limits
    // const string98 = GPUTextureView0.label
    // const ArrayBuffer8 = GPUBuffer19.getMappedRange();
    // const GPUTexture25 = GPUDevice0.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "rgba8unorm-srgb",
    //     label: "GPUTexture25",
    //     size: {
    //         width: 2431,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgba8unorm"]
    // });
    // const GPUBindGroupLayout11 = GPUComputePipeline15.getBindGroupLayout(0);
    // const GPUComputePipeline59 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline59",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder16.setPipeline(GPUComputePipeline59);
    // const GPUComputePipeline60 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline60",
    //     layout: "auto"
    // });
    // const GPUQueue40 = GPUDevice2.queue
    // GPUQueue40.writeBuffer(GPUBuffer9, 0, typedArray43);
    // const GPUBindGroup29 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline59.bindGroup",
    //     layout: GPUComputePipeline59.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup29);
    // const GPUCommandEncoder22 = GPUDevice3.createCommandEncoder({
    //     label: "GPUCommandEncoder22"
    // });
    // const GPUComputePipeline61 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline61",
    //     layout: "auto"
    // });
    // GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup29);
    // GPUComputePassEncoder16.setPipeline(GPUComputePipeline61);
    // const GPUComputePipeline62 = GPUDevice2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule10
    //     },
    //     label: "GPUComputePipeline62",
    //     layout: "auto"
    // });
    // const GPUQueue41 = GPUDevice2.queue
    // GPUQueue41.writeBuffer(GPUBuffer9, 0, typedArray44);
    // const GPUBindGroup30 = GPUDevice2.createBindGroup({
    //     label: "GPUComputePipeline61.bindGroup",
    //     layout: GPUComputePipeline61.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer9
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer10
    //         }
    //     }]
    // });
    // GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup30);
    // GPUComputePassEncoder16.dispatchWorkgroups(144, 18, 51);
    // const GPUSupportedFeatures24 = GPUAdapter10.features
    // const string99 = GPURenderPipeline17.label
    // GPUComputePassEncoder16.setBindGroup(0, GPUBindGroup30);
    // GPUComputePassEncoder16.end();
    // const GPUTexture26 = GPUDevice4.createTexture({
    //     dimension: "1d",
    //     sampleCount: 1,
    //     format: "bgra8unorm",
    //     label: "GPUTexture26",
    //     size: {
    //         width: 272,
    //         height: 1,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.COPY_DST,
    //     viewFormats: ["bgra8unorm-srgb"]
    // });
    // const GPUCommandEncoder23 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder23"
    // });
    // const GPUCommandEncoder24 = GPUDevice1.createCommandEncoder({
    //     label: "GPUCommandEncoder24"
    // });
    // const string100 = GPUCommandEncoder23.label
    // const GPUAdapter11 = await navigator.gpu.requestAdapter({
    //     powerPreference: "high-performance"
    // });
    // const boolean7 = GPUAdapter3.isFallbackAdapter
    // const GPUSupportedLimits21 = GPUDevice3.limits
    // const GPUBindGroupLayout12 = GPUComputePipeline9.getBindGroupLayout(0);
    // const string101 = GPUBuffer20.label
    // const GPUComputePassEncoder17 = GPUCommandEncoder14.beginComputePass({
    //     label: "GPUComputePassEncoder17"
    // });
    // const string102 = GPUComputePassEncoder17.label
    // GPURenderPassEncoder9.end();
    // const WGSLLanguageFeatures11 = navigator.gpu.wgslLanguageFeatures
    // const GPUCommandEncoder25 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder25"
    // });
    // const GPUCommandBuffer15 = GPUCommandEncoder25.finish();
    // GPUQueue19.submit([GPUCommandBuffer15]);
    // const string103 = GPUBuffer11.label
    // const GPUComputePipeline63 = GPUDevice4.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule20
    //     },
    //     label: "GPUComputePipeline63",
    //     layout: "auto"
    // });
    // const GPUBindGroupLayout13 = GPUComputePipeline1.getBindGroupLayout(0);
    // const GPUComputePassEncoder18 = GPUCommandEncoder7.beginComputePass({
    //     label: "GPUComputePassEncoder18"
    // });
    // const GPUCommandEncoder26 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder26"
    // });
    // const GPUCommandBuffer16 = GPUCommandEncoder26.finish();
    // GPUQueue30.submit([GPUCommandBuffer16]);
    // const GPUSupportedFeatures25 = GPUDevice0.features
    // GPUComputePassEncoder17.end();
    // const GPUTexture27 = GPUDevice0.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rg8sint",
    //     label: "GPUTexture27",
    //     size: {
    //         width: 325,
    //         height: 857,
    //         depthOrArrayLayers: 22
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rg8sint"]
    // });
    // const GPUTexture28 = GPUDevice1.createTexture({
    //     dimension: "3d",
    //     sampleCount: 1,
    //     format: "rgba16float",
    //     label: "GPUTexture28",
    //     size: {
    //         width: 12,
    //         height: 872,
    //         depthOrArrayLayers: 6
    //     },
    //     mipLevelCount: 2,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
    //     viewFormats: ["rgba16float"]
    // });
    // const GPUTextureView17 = GPUTexture28.createView({
    //     aspect: "all",
    //     dimension: "3d",
    //     arrayLayerCount: 1,
    //     baseArrayLayer: 0,
    //     mipLevelCount: 1,
    //     baseMipLevel: 0,
    //     format: "rgba16float",
    //     label: "GPUTextureView17"
    // });
    // const GPUQuerySet22 = GPUDevice1.createQuerySet({
    //     count: 3556,
    //     label: "GPUQuerySet22",
    //     type: "occlusion"
    // });
    // const GPURenderPassEncoder11 = GPUCommandEncoder24.beginRenderPass({
    //     colorAttachments: [{
    //         clearValue: {
    //             r: 0.5659968827902095,
    //             g: 0.7869643517940672,
    //             b: 0.5404720323984543,
    //             a: 0.7380393345728092
    //         },
    //         loadOp: "load",
    //         storeOp: "discard",
    //         view: GPUTextureView17,
    //         depthSlice: 3
    //     }],
    //     label: "GPURenderPassEncoder11",
    //     maxDrawCount: 3178644511,
    //     occlusionQuerySet: GPUQuerySet22
    // });
    // const string104 = GPURenderPassEncoder11.label
    // const GPUBuffer25 = GPUDevice3.createBuffer({
    //     label: "GPUBuffer25",
    //     mappedAtCreation: false,
    //     size: 171134268,
    //     usage: GPUBufferUsage.VERTEX | GPUBufferUsage.COPY_DST
    // });
    // const GPUCommandEncoder27 = GPUDevice0.createCommandEncoder({
    //     label: "GPUCommandEncoder27"
    // });
    // const GPUCommandBuffer17 = GPUCommandEncoder27.finish();
    // GPUQueue30.submit([GPUCommandBuffer17]);
    // const GPUSupportedLimits22 = GPUAdapter4.limits
    // const GPURenderPipeline19 = GPUDevice1.createRenderPipeline({
    //     fragment: {
    //         entryPoint: "main",
    //         module: GPUShaderModule14,
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
    //     label: "GPURenderPipeline19",
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
    //         module: GPUShaderModule18
    //     }
    // });
    // GPURenderPassEncoder11.setPipeline(GPURenderPipeline19);
    // GPUComputePassEncoder18.end();
    // const GPUCommandBuffer18 = GPUCommandEncoder7.finish();
    // const GPUSupportedLimits23 = GPUDevice0.limits
    // GPUQueue32.writeBuffer(GPUBuffer0, 4, typedArray45);
    // const GPUTexture29 = GPUDevice1.createTexture({
    //     dimension: "2d",
    //     sampleCount: 4,
    //     format: "rgb10a2unorm",
    //     label: "GPUTexture29",
    //     size: {
    //         width: 827,
    //         height: 2896,
    //         depthOrArrayLayers: 1
    //     },
    //     mipLevelCount: 1,
    //     usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
    //     viewFormats: ["rgb10a2unorm"]
    // });
    // const GPUBuffer26 = GPUDevice2.createBuffer({
    //     label: "GPUBuffer26",
    //     mappedAtCreation: false,
    //     size: 26232876,
    //     usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC
    // });
    // const GPUComputePassEncoder19 = GPUCommandEncoder23.beginComputePass({
    //     label: "GPUComputePassEncoder19"
    // });
    // const GPUComputePipeline64 = GPUDevice0.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule6
    //     },
    //     label: "GPUComputePipeline64",
    //     layout: "auto"
    // });
    // const GPUQueue42 = GPUDevice0.queue
    // GPUQueue42.writeBuffer(GPUBuffer5, 0, typedArray46);
    // const GPUBindGroup31 = GPUDevice0.createBindGroup({
    //     label: "GPUComputePipeline64.bindGroup",
    //     layout: GPUComputePipeline64.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer5
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer13
    //         }
    //     }]
    // });
    // GPUComputePassEncoder19.setBindGroup(0, GPUBindGroup31);
    // const GPUComputePipeline65 = GPUDevice1.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: GPUShaderModule9
    //     },
    //     label: "GPUComputePipeline65",
    //     layout: "auto"
    // });
    // const GPUBuffer27 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer27",
    //     mappedAtCreation: false,
    //     size: 48,
    //     usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST
    // });
    // const GPUBuffer28 = GPUDevice1.createBuffer({
    //     label: "GPUBuffer28",
    //     mappedAtCreation: false,
    //     size: 32,
    //     usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDIRECT | GPUBufferUsage.INDEX
    // });
    // const GPUQueue43 = GPUDevice1.queue
    // GPUQueue43.writeBuffer(GPUBuffer27, 0, typedArray47);
    // const GPUBindGroup32 = GPUDevice1.createBindGroup({
    //     label: "GPUComputePipeline65.bindGroup",
    //     layout: GPUComputePipeline65.getBindGroupLayout(0),
    //     entries: [{
    //         binding: 0,
    //         resource: {
    //             buffer: GPUBuffer27
    //         }
    //     }, {
    //         binding: 1,
    //         resource: {
    //             buffer: GPUBuffer28
    //         }
    //     }]
    // });

}
main().catch(console.error);