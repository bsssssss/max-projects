const maxAPI = require("max-api");
const http = require("node:http");

maxAPI.post("Hello from node !!!");

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/plain"});
    res.end('Oh un serveur !');
});

server.listen(7400, () => {
    maxAPI.post("Started server at http://localhost:7400");
})
