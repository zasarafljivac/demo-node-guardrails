const http = require('http');

const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json' });
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
