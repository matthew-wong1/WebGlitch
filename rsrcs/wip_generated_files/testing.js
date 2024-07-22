const {
    create,
    globals
} = require('D:/final_proj/dawn/out/Debug/Debug/dawn.node');
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
const fragmentShader = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const vertexShader = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const computeShader = loadShader('D:/final_proj/WebGlitch/rsrcs/shaders/compute/2/compute.wgsl')

async function main() {
    const adapter = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device1 = await adapter.requestDevice();
    const device2 = await adapter.requestDevice();
    const fragmentModule = device2.createShaderModule({
        label: "fragment",
        code: fragmentShader
    });
    const vertexModule = device2.createShaderModule({
        label: "fragment",
        code: vertexShader
    });
    const pipelineFromDevice2 = device2.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: fragmentModule,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "constant",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN
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
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: vertexModule
        }
    });

    const commandEncoder = device1.createCommandEncoder({
        label: "GPUCommandEncoder1"
    });
    const GPUTexture0 = device1.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "GPUTexture0",
        size: {
            width: 3980,
            height: 1116,
            depthOrArrayLayers: 24
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    const GPUTextureView0 = GPUTexture0.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "GPUTextureView0"
    });
    const GPUQuerySet0 = device1.createQuerySet({
        count: 1506,
        label: "GPUQuerySet0",
        type: "occlusion"
    });
    const renderPassEncoder = commandEncoder.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7136753319633224,
                g: 0.20468946334939386,
                b: 0.6469886075155065,
                a: 0.5876206807985962
            },
            loadOp: "load",
            storeOp: "store",
            view: GPUTextureView0
        }],
        label: "GPURenderPassEncoder0",
        maxDrawCount: 1509764793,
        occlusionQuerySet: GPUQuerySet0
    });

    renderPassEncoder.setPipeline(pipelineFromDevice2);
    renderPassEncoder.end();
    const finishedCommandEncoder = commandEncoder.finish();


    // // Compute pipelines
    // const computePassEncoder = commandEncoder.beginComputePass();
    // const computeModule = device2.createShaderModule({
    //     code: computeShader
    // });
    //
    // const computePipeline = device2.createComputePipeline({
    //     compute: {
    //         entryPoint: "main",
    //         module: computeModule
    //     },
    //     layout: "auto"
    // });
    // computePassEncoder.setPipeline(computePipeline);

}
main().catch(console.error);