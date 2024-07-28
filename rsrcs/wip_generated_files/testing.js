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
    const adapter = await navigator.gpu.requestAdapter();
    const device = await adapter.requestDevice();

    const uniformBuffer = device.createBuffer({
        size: 12,
        usage:
            GPUBufferUsage.UNIFORM |
            GPUBufferUsage.COPY_SRC |
            GPUBufferUsage.COPY_DST,
    });

    const destBuffer = device.createBuffer({
        size: 12,
        usage:
            GPUBufferUsage.COPY_DST |
            GPUBufferUsage.MAP_READ
    });

    await destBuffer.mapAsync(GPUMapMode.READ, 0, 12);

    const encoder = device.createCommandEncoder({
        label: "encoder1"
    });

    encoder.copyBufferToBuffer(uniformBuffer, 0, destBuffer, 0, uniformBuffer.size);
    finishedEncoder = encoder.finish()
    device.queue.submit([finishedEncoder]);



    console.log("hi")


}
main().catch(console.error);