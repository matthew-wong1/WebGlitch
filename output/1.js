const puppeteer = require("puppeteer");
const { create, globals } = require("../../../dawn/out/Debug/dawn.node");
Object.assign(globalThis, globals);
let navigator = { gpu: create([]) };

if (!navigator.gpu) {
  throw new Error("WebGPU not supported on this browser");
}

async function main() {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();

  await page.goto("../rsrcs/html/index.html");

  const canvas = document.querySelector("canvas");
  const context = canvas.getContext("webgpu");

  const devicePixelRatio = window.devicePixelRatio;
  canvas.width = canvas.clientWidth * devicePixelRatio;
  canvas.height = canvas.clientHeight * devicePixelRatio;
  const presentationFormat = navigator.gpu.getPreferredCanvasFormat();

  const agQtuBvwk = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const muWBeDlaNKz = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const UeYSROxi = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const eiiJBHUBsOAIFg = await navigator.gpu.requestAdapter({
    powerPreference: "low-power",
  });
  const kkHbrSDlkONvzS = await navigator.gpu.requestAdapter({
    powerPreference: "low-power",
  });

  await browser.close();
}
main().catch(console.error);
