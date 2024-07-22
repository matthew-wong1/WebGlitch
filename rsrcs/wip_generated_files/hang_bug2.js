const {
    create,
    globals
} = require('../../../dawn/out/Debug/Debug/dawn.node');
const fs = require('fs');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {
    const adapter = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device = await adapter.requestDevice();

    const texture = device.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture0",
        size: {
            width: 1825,
            height: 3122,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 1200,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg32uint"]
    });

    const texture2 = device.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg32uint",
        label: "GPUTexture0",
        size: {
            width: 1825,
            height: 3122,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 12,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg32uint"]
    });

    console.log(texture)
    console.log(texture.label);
    console.log(texture2)

}
main().catch(console.error);