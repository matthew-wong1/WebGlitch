if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

let pathPrefix = ""
async function loadShader(filePath) {
    try {
        // In-browser execution (since relative paths being used)
        if (pathPrefix === "") {
            const response = await fetch(filePath);
            if (!response.ok) {
                throw new Error(`Failed to load shader: ${response.statusText}`);
            }
            return await response.text();
        }

        // In-runtime execution (not an issue in-browser since this is never reached)
        return await fs.readFile(filePath, 'utf8');

    } catch (err) {
        console.error('Failed to load shader:', err);
    }
}

// function loadShader(file) {
//     try {
//         const data = fs.readFileSync(file, 'utf8');
//         return data;
//     } catch (err) {
//         console.error('Failed to load shader:', err);
//     }
// }
