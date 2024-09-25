const { chromium, firefox } = require('playwright');
const fs = require('fs');
const path = require('path');

// Get the JavaScript file path from the command-line arguments
const scriptFilePath = process.argv[2];

if (!scriptFilePath) {
    console.error('Usage: node playwright.js <path-to-javascript-file>');
    process.exit(1);
}

(async () => {
    const scriptContent = fs.readFileSync(scriptFilePath, 'utf8');

    const browser = await firefox.launch({
		timeout: 60000,
		protocolTimeout: 60000,
        headless: false,

    });

    // executablePath: '/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary'

    const context = await browser.newContext({ignoreHTTPSErrors: true});
    const page = await context.newPage();

	
    page.on('console', msg => {
        const text = msg.text();
        const type = msg.type();
        const location = msg.location();
        console.log(`${text}`);
    });

    await page.goto('http://localhost:8080/index.html');

    // Inject the JavaScript file content into the page
    await page.addScriptTag({ content: scriptContent });

    // Wait for the WebGPU code to execute
    await page.waitForTimeout(5000);

    // Close the browser
    await browser.close();
})();
