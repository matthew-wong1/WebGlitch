const { create, globals } = require('../../dawn_newest/out/Debug/Debug/dawn.node');
const fs = require("fs");
Object.assign(globalThis, globals); // Provides constants like GPUBufferUsage.MAP_READ
let navigator = { gpu: create([]), };

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser.");
}

function loadShader(file) {
    try {
        const data = fs.readFileSync(file, 'utf8');
        return data;
    } catch (err) {
        console.error('Failed to load shader:', err);
    }
}
console.log("Reached here!");
const kTJxoAWcMpO = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const yZmqPtEfLiZRyLmR = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
async function main() {

    const RbsCL = await navigator.gpu.requestAdapter({});
    console.log(RbsCL.limits.maxTextureArrayLayers);
    const DBbsuCQOYzKdHltM = await RbsCL.requestDevice();
    const iwjBlLErvlGA = DBbsuCQOYzKdHltM.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "YUYSllnANXTlk",
        size: {
            width: 766,
            height: 1069,
            depthOrArrayLayers: 530
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const lhqTml = iwjBlLErvlGA.createView({label: "hi"});
    iwjBlLErvlGA.destroy();
    console.log(lhqTml.label);
    const dqoGqGiASgiepmtOAn = DBbsuCQOYzKdHltM.createShaderModule({
        label: "fragment",
        code: kTJxoAWcMpO
    });
    const pjGKIlMTA = DBbsuCQOYzKdHltM.createShaderModule({
        label: "vertex",
        code: yZmqPtEfLiZRyLmR
    });
    const BiGhHoyJYLRSeKtlyf = DBbsuCQOYzKdHltM.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: dqoGqGiASgiepmtOAn,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL
            }]
        },
        label: "gLOEKJmElusgCeHi",
        layout: "auto",
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: pjGKIlMTA
        }
    });
    const QtKQOpx = DBbsuCQOYzKdHltM.createCommandEncoder();
    const uyTtzEJtp = QtKQOpx.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.1816650894706617,
                g: 0.6932528223666907,
                b: 1.7394271822750702,
                a: 1.4197211173770994
            },
            loadOp: "load",
            storeOp: "discard",
            view: lhqTml
        }],
        label: "dDNfKAnuKdADfv",
    });
} main().catch(console.error);