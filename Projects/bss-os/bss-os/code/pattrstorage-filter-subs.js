
function subscribe(client)
{
  const is_poly = client.includes("poly~");

  if (is_poly) {
  }
  else {
    outlet(0, `subscribe ${client}`);
  }
}
