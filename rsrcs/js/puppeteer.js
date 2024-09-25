const puppeteer = require('puppeteer-core');
const fs = require('fs');
const path = require('path');

// Get the JavaScript file path from the command-line arguments
const scriptFilePath = process.argv[2];

if (!scriptFilePath) {
    console.error('Usage: node puppeteer.js <path-to-javascript-file>');
    process.exit(1);
}

(async () => {
    const scriptContent = fs.readFileSync(scriptFilePath, 'utf8');

    // executablePath: '/vol/bitbucket/klw19/chromium/src/out/Default/chrome',
    // const browser = await puppeteer.launch({
    // 	timeout: 60000,
    // 	protocolTimeout: 60000,
    //     headless: false,
    // 	executablePath: '/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary',
    // });

    const browser = await puppeteer.launch({
        browser: "firefox",
        timeout: 60000,
        protocolTimeout: 60000,
        headless: false,
        executablePath: '/Applications/Firefox Nightly.app/Contents/MacOS/firefox',
    });

    // executablePath: '/Applications/Google Chrome Canary.app/Contents/MacOS/Google Chrome Canary'

    // const context = await puppeteer.newContext({ignoreHTTPSErrors: true});
    // const page = await context.newPage();

    const page = await browser.newPage();

    page.on('console', msg => {
        const text = msg.text();
        const type = msg.type();
        const location = msg.location();
        console.log(`${text}`);
    });
    // page
    //   .on('console', message =>
    //     console.log(`${message.type().substr(0, 3).toUpperCase()} ${message.text()}`))
    //   .on('pageerror', ({ message }) => console.log(message))
    //   .on('response', response =>
    //     console.log(`${response.status()} ${response.url()}`))
    //   .on('requestfailed', request =>
    //     console.log(`${request.failure().errorText} ${request.url()}`))
    //   page.on('pageerror', error => console.error(`[Page Error] ${error.message}`));
    //   page.on('requestfailed', request => {
    //       console.log(`Request failed: ${request.failure().errorText} ${request.url()}`);
    //   });

    await page.goto('http://localhost:8080/index.html');

    // Inject the JavaScript file content into the page
    await page.addScriptTag({ content: scriptContent });

    // Wait for the WebGPU code to execute
    // await page.waitForTimeout(5000);
    await new Promise(r => setTimeout(r, 10000))

    // Close the browser
    await browser.close();
})();
