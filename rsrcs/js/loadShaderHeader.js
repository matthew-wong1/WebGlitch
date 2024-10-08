if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

if (typeof pathPrefix === "undefined") {
	globalThis.pathPrefix = "";
}

function loadShader(filePath) {
    // In-browser execution
    if (pathPrefix === "") {
        return fetch(filePath)
            .then(response => {
                if (!response.ok) {
                    throw new Error(`Failed to load shader: ${response.statusText}`);
                }
                return response.text();
            })
            .catch(err => {
                console.error('Failed to load shader:', err);
            });
    }

    // In-runtime execution
    try {
        return fs.readFileSync(filePath, 'utf8');  // No async or await needed for sync
    } catch (err) {
        console.error('Failed to load shader:', err);
    }
}