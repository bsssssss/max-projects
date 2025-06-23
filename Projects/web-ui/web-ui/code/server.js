const maxAPI = require('max-api');
const http = require('node:http');
const fs = require('fs');

const server = http.createServer((req, res) => {
  fs.readFile('./index.html', (err, html) => {
    res.writeHead(200, {
      'Content-Type': 'text/html',
      'Content-length': html.length,
    });
    res.write(html);
    res.end();
  });
});

server.listen(7400, () => {
  maxAPI.post('Started server at http://localhost:7400');
});
