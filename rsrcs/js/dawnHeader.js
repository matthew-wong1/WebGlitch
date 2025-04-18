const path = require("path")
const webglitchDir = path.resolve(__dirname, "../");
const webglitchRoot = path.resolve(webglitchDir, "..");
const {
    create,
    globals,
} = require(path.join(webglitchRoot, "dawn/out/Debug/dawn.node"));
Object.assign(globalThis, globals);
let navigator = { gpu: create([]) };
const fs = require("node:fs");
globalThis.pathPrefix = path.join(webglitchDir, "rsrcs/html/");
