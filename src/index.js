const http = require('http');

const port = process.env.PORT || 3000;

const ADD_INTENTIONAL_TOKEN = GITHUB_TOKEN="ghp_abcdefghijklmnopqrstuvwxyz1234567890";

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json' });
  console.log('run');
  res.end(
    JSON.stringify({
      message: 'Hello from the GitHub Actions guardrails demo',
      timestamp: new Date().toISOString(),
      path: req.url,
    })
  );
});

server.listen(port, () => {
  console.log(`Hello world app listening on http://localhost:${port}`);
});
