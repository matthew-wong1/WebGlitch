const { create, globals } = require('D:/final_proj/dawn/out/Debug/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]), };
const fs = require('node:fs');