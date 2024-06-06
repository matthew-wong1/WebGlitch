const puppeteer = require('puppeteer');
const path = require('path');
const { create, globals } = require('../../dawn/out/Debug/dawn.node');
Object.assign(globalThis, globals);
let navigator = { gpu: create([]), };

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();

    await page.goto(`file://${path.resolve(__dirname, '../rsrcs/html/index.html')}`);
    await page.waitForSelector('canvas'); // Ensure the canvas is loaded

    // Run JS in context of browser instead of node environment
    await page.evaluate(async () => {
        const canvas = document.querySelector('canvas');
        const context = canvas.getContext('webgpu');

        const devicePixelRatio = window.devicePixelRatio;
        canvas.width = canvas.clientWidth * devicePixelRatio;
        canvas.height = canvas.clientHeight * devicePixelRatio;
