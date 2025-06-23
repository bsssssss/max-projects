const maxAPI = require('max-api');
const http = require('node:http');
const fs = require('fs');
const ws = require('ws');

const wss = new ws.WebSocketServer({port: 7401});
let clients = [];

wss.on('connection', (socket) => {
    maxAPI.post("WebSocket client connected");
    clients.push(socket);

    socket.on('close', () => {
        clients = clients.filter(client => client !== socket);
        maxAPI.post('WebSocket client disconnected');
    })
})

const htmlPath = "./public/index.html";
fs.watch(htmlPath, (eventType, filename) => {
    maxAPI.post(`${filename} => ${eventType}`);
})

const server = http.createServer((req, res) => {
  fs.readFile(htmlPath, (err, html) => {
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
