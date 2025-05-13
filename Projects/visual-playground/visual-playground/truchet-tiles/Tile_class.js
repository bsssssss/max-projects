class Grid
{
  constructor(size, div)
  {
    this.size    = size;
    this.n_tiles = 2;
    this.tiles;
  }

  init()
  {

    this.tiles = [];

    for (let i = 0; i < this.n_tiles; i++)
    {
      let config = this.calculate_tile_dim(i);

      post(JSON.stringify(config));
      let tile = new Tile();
      this.tiles.push(tile);
    }
  }

  calculate_tile_dim(i)
  {
    let width  = this.size[0] / this.n_tiles;
    let height = this.size[1] / this.n_tiles;
    let x      = i * width;
    let y      = i * height;

    let config = {
      x : x,
      y : y,
      width : width,
      height : height,
    };
    return config;
  }
}

class Tile
{
  constructor()
  {
  }
}

module.exports = Grid;
