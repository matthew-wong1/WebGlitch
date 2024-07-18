const {
    create,
    globals
} = require('../../dawn/out/Debug/Debug/dawn.node');
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
const computeShader = loadShader('D:/final_proj/WebGlitch/rsrcs/webgpu/wip_shaders/slow_shader.wgsl');

async function main() {
    const adapter = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device = await adapter.requestDevice();
    const computeShaderModule = device.createShaderModule({
        label: "compute",
        code: computeShader
    });
}
main().catch(console.error);