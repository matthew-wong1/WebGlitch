const { create, globals } = require('../../dawn/out/Debug/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]), };
