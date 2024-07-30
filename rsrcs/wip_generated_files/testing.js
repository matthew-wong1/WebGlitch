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

    const array = new Uint8Array([1, 2, 3, 4]);
    const buffer = device.createBuffer({
        label: "GPUBuffer18",
        mappedAtCreation: true,
        size: 24,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });

    // queue1.writeBuffer(buffer, 0 , array);
    const encoder = device.createCommandEncoder()
    // queue2.submit([encoder])

    const GPUBuffer4 = device.createBuffer({
        label: "GPUBuffer4",
        mappedAtCreation: true,
        size: 266245468,
        usage: GPUBufferUsage.COPY_DST
    });
    encoder.clearBuffer(GPUBuffer4);

}
main().catch(console.error);