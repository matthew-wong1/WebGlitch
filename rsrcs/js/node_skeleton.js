const puppeteer = require('puppeteer');
const { create, globals } = require('../../dawn/out/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]), };

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
}