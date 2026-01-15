
function subscribe(client) 
{
  const is_poly = client.includes("poly~");
  if (!is_poly) {
      outlet(0, `subscribe ${client}`);
  }
}