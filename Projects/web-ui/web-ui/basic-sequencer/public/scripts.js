const socket = new WebSocket('ws://localhost:7401');

socket.onopen = () => {
    console.log('Connected to websocket');
};

socket.onmessage = (event) => {
    console.log(`Received message: ${event.data}`);
};
