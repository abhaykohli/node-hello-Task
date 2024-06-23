const http = require('http');
const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello Node!\n');
});

// Listen on all network interfaces (0.0.0.0)
server.listen(port, '0.0.0.0', () => {
  console.log(`Server running on http://0.0.0.0:${port}/`);
});
