if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

async function main() {
    const GPUAdapter0 = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const GPUDevice0 = await GPUAdapter0.requestDevice();
    console.log("hi");
} main().then(() => {}).catch(error => {
    console.log(error);
});