const maxAPI = require('max-api');
const http = require('http');
const fs = require('fs');
const ws = require('ws');

const PORT = 7400;

const dir = './public/';
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
    maxAPI.post('request: ' + req.url);
    if (req.url == '/') {
        fs.readFile(dir + 'index.html', (err, data) => {
            res.writeHead(200, {
                'Content-Type': 'text/html',
                'Content-length': data.length,
            });
            res.write(data);
            res.end();
        });
    } else if (req.url == '/style.css') {
        fs.readFile(dir + 'style.css', (err, data) => {
            res.writeHead(200, {
                'Content-Type': 'text/css',
                'Content-length': data.length,
            });
            res.write(data);
            res.end();
        });
    } else if (req.url == '/scripts.js') {
        fs.readFile(dir + 'scripts.js', (err, data) => {
            res.writeHead(200, {
                'Content-Type': 'text/javascript',
                'Content-length': data.length,
            });
            res.write(data);
            res.end();
        });
    }
});

server.listen(PORT, () => {
    maxAPI.post('Started server at http://localhost:7400');
    maxAPI.outlet('url', `http://localhost:${PORT}`);
});
