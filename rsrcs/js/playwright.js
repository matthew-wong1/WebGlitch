const { chromium } = require('playwright');
const puppeteer = require('puppeteer-core');
const fs = require('fs');
const path = require('path');

// Get the JavaScript file path from the command-line arguments
const scriptFilePath = process.argv[2];

if (!scriptFilePath) {
    console.error('Usage: node playwright-script.js <path-to-javascript-file>');
    process.exit(1);
}

(async () => {
    const scriptContent = fs.readFileSync(scriptFilePath, 'utf8');

    const browser = await puppeteer.launch({
        headless: true,
        executablePath: '/Users/matthew/Documents/msc/final_proj/WebGlitch/rsrcs/browsers/chromium-131.0.6734.0-mac-asan/Chromium.app/Contents/MacOS/Chromium',
        args: [
            '--enable-unsafe-webgpu',
            '--unsafely-treat-insecure-origin-as-secure=http://localhost:8080'
        ]
    });

    const context = await browser.newContext({
        ignoreHTTPSErrors: true
    });

    const page = await context.newPage();

    page.on('console', msg => {
        const text = msg.text();
        const type = msg.type();
        const location = msg.location();
        console.log(`${text}`);
    });
    page.on('pageerror', error => console.error(`[Page Error] ${error.message}`));
    page.on('requestfailed', request => {
        console.log(`Request failed: ${request.failure().errorText} ${request.url()}`);
    });

    await page.goto('http://localhost:8080/index.html');

    // Inject the JavaScript file content into the page
    await page.addScriptTag({ content: scriptContent });

    // Wait for the WebGPU code to execute
    await page.waitForTimeout(5000);

    // Close the browser
    await browser.close();
})();
