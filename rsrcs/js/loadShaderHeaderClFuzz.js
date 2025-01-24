if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

globalThis.pathPrefix = "";

function loadShader(filePath) {
    return globalThis[filePath.replace(/[\/.]/g, "", "")];
}
