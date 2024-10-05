const puppeteer = require('puppeteer-core');
const fs = require('fs');

// Get the JavaScript file path from the command-line arguments
const scriptFilePath = process.argv[2];

if (!scriptFilePath) {
    console.error('Usage: node puppeteer.js <path-to-javascript-file>');
    process.exit(1);
}

const browserType = process.env.BROWSER;
const executablePath = process.env.EXECUTABLE_PATH;

(async () => {
    const scriptContent = fs.readFileSync(scriptFilePath, 'utf8');

    const browser = await puppeteer.launch({
        browser: browserType,
        timeout: 60000,
        protocolTimeout: 60000,
        headless: false,
        executablePath: executablePath,
    });

    // '/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary'
    // '/Applications/Firefox Nightly.app/Contents/MacOS/firefox'

    const page = await browser.newPage();

    page.on('console', msg => {
        const text = msg.text();
        const type = msg.type();
        const location = msg.location();
        console.log(`${text}`);
    });

    await page.evaluateOnNewDocument(() => {
        window.addEventListener('error', (e) => {
            console.log(e.message)
        });

        window.addEventListener('unhandledrejection', (event) => {
            console.log(event.reason)
        });
    });

    await page.goto('http://localhost:8080/index.html');

    // Inject the JavaScript file content into the page
    await page.addScriptTag({ content: scriptContent });

    // Wait for the WebGPU code to execute
    // await page.waitForTimeout(5000);
    await new Promise(r => setTimeout(r, 20000))

    // Close the browser
    await browser.close();
})();
