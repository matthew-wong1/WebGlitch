const {
    create,
    globals,
} = require("/Users/matthew/Documents/msc/final_proj/dawn/out/Debug/dawn.node");
Object.assign(globalThis, globals);
let navigator = { gpu: create([]) };
const fs = require("node:fs");
globalThis.pathPrefix = "/Users/matthew/Documents/msc/final_proj/WebGlitch/rsrcs/html/";
