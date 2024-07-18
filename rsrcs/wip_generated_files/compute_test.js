const {
    create,
    globals
} = require('D:/dawn_clang/out/Debug/Debug/dawn.node');
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

const computeShader = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const adapter = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device = await adapter.requestDevice();
    const computeShaderModule = device.createShaderModule({
        label: "compute",
        code: computeShader
    });
    const computePipeline = device.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: computeShaderModule
        },
        label: "computePipeline",
        layout: "auto"
    });
    const commandEncoder = device.createCommandEncoder();
    const computePass = commandEncoder.beginComputePass();
    const inSize = 32;
    const outSize = 32;

    const uniformBuffer = device.createBuffer({
        size: inSize,
        usage: GPUBufferUsage.UNIFORM,
    });
    const storageBuffer = device.createBuffer({
        size: outSize,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC,
    });
    const bindGroup = device.createBindGroup({
        layout: computePipeline.getBindGroupLayout(0),
        entries: [
            { binding: 0, resource: { buffer: uniformBuffer, size: inSize}},
            { binding: 1, resource: { buffer: storageBuffer, size: outSize}}
        ]
    })
    computePass.setPipeline(computePipeline);
    computePass.setBindGroup(0, bindGroup) // doesnt matter if pipeline set or not
    computePass.dispatchWorkgroups(256, 256, 64); // requires pipeline and bind group to be set
    computePass.end()
    const commandBuffer = commandEncoder.finish()
    device.queue.submit([commandBuffer])


}
main().catch(console.error);