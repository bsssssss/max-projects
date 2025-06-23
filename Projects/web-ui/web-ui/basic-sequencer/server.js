const maxAPI = require('max-api');
const http = require('node:http');
const fs = require('fs');
const ws = require('ws');

const htmlPath = './public/index.html';
const cssPath = './public/style.css';

const wss = new ws.WebSocketServer({ port: 7401 });
let clients = [];

wss.on('connection', (socket) => {
    maxAPI.post('WebSocket client connected');
    clients.push(socket);

    socket.on('close', () => {
        clients = clients.filter((client) => client !== socket);
        maxAPI.post('WebSocket client disconnected');
    });
});

fs.watch(htmlPath, (eventType, filename) => {
    maxAPI.post(`${filename} => ${eventType}`);
});

const server = http.createServer((req, res) => {
    maxAPI.post(req.url);
    if (req.url == '/') {
        fs.readFile(htmlPath, (err, data) => {
            res.writeHead(200, {
                'Content-Type': 'text/html',
                'Content-length': data.length,
            });
            res.write(data);
            res.end();
        });
    } else if (req.url == '/style.css') {
        fs.readFile(cssPath, (err, data) => {
            res.writeHead(200, {
                'Content-Type': 'text/css',
                'Content-length': data.length,
            });
            res.write(data);
            res.end();
        });
    }
});

server.listen(7400, () => {
    maxAPI.post('Started server at http://localhost:7400');
});
