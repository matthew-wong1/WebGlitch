const { create, globals } = require('../../dawn_newest/out/Debug/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]), };

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {


