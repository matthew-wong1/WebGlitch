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

  const FcIQSROWpdmIdkIkQ = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const VcjnrcTiNfy = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const sMZmoZdcqVbGVSuz = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const jlBBuwYjxyUERe = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });
  const doChhhRs = await navigator.gpu.requestAdapter({
    powerPreference: "high-performance",
  });

  await browser.close();
}
main().catch(console.error);
