/* --CLASSES------------------------------------------ */

class Game
{
  constructor()
  {
    this.state    = null;
    this.grid     = null;
    this.snake    = null;
    this.food     = null;
    this.controls = null;
    this.score    = null;
    this.rate     = null;
  }

  init()
  {
    this.rate  = 10;
    this.score = 0;

    this.controls = {
      direction : {
        x : 1,
        y : 0,
      }
    };

    this.state = 'paused';
    this.grid  = new Grid(width, height, 32);
    this.snake = new Snake(this.grid);
    this.food  = new Food(this.grid);

    this.grid.init();
    this.snake.spawn();
    this.food.spawn();

    post("--- PRESS SPACE-BAR TO START ---\n");
  }

  update()
  {
    if (this.state == 'playing')
    {
      if (this.snake.check_cell_type() === 'snake')
      {
        this.state = 'game over';
        this.game_over();
      }

      if (this.snake.check_cell_type() === 'food')
      {
        this.update_score();
        this.update_rate();

        this.snake.grow();
        this.snake.update();

        this.food.spawn();
      }
      else
      {
        this.snake.update();
      }
    }

    this.grid.update_cells();
  }

  update_score()
  {
    this.score++;
    this.show_score();
  }

  show_score()
  {
    outlet(0, "score", this.score);
  }

  update_rate()
  {
    if (this.score % 4 == 0) {
      this.rate += 1;
    }
  }

  game_over()
  {
    outlet(0, "game", "over");
  }

  run()
  {
    tick.interval = 1000 / this.rate;
    m.redraw();
  }

  input(k)
  {
    if (k == 28) { // left
      this.set_snake_direction({x : -1, y : 0});
    }
    if (k == 29) { // right
      this.set_snake_direction({x : 1, y : 0});
    }
    if (k == 30) { // down
      this.set_snake_direction({x : 0, y : -1});
    }
    if (k == 31) { // up
      this.set_snake_direction({x : 0, y : 1});
    }
    if (k == 32)
    { // space
      if (this.state === 'paused') {
        this.state = 'playing';
        this.show_score();
      }
      else if (this.state === 'playing') {
        this.state = 'paused';
      }
      else if (this.state === 'game over') {
        this.init();
      }
    }
  }

  set_snake_direction(direction)
  {
    let turn_over = this.snake.is_self_turn(direction);

    if (!turn_over) {
      this.controls.direction = direction;
      this.snake.direction    = direction;
    }
  }
}

class Grid
{
  constructor(width, height, cell_count)
  {
    this.cell_count = cell_count;
    this.cell_size  = Math.floor(Math.min(width, height) / cell_count);
    this.cols       = Math.floor(width / this.cell_size);
    this.rows       = Math.floor(height / this.cell_size);
    this.offset_x   = Math.floor((width - (this.cols * this.cell_size)) / 2);
    this.offset_y   = Math.floor((height - (this.rows * this.cell_size)) / 2);
    this.cells      = [];
  }

  init()
  {
    for (let x = 0; x < this.cols; x++)
    {
      this.cells[x] = [];
      for (let y = 0; y < this.rows; y++)
      {
        this.cells[x][y] = { type : 'empty' }
      }
    }
  }

  set_cell(x, y, type)
  {
    if (x >= 0 && x < this.cols && y >= 0 && y < this.rows) {
      this.cells[x][y].type = type;
    }
  }

  get_cell_type(x, y)
  {
    if (!isNaN(x) && !isNaN(y)) {
      return this.cells[x][y].type;
    }
  }

  show_cell(x, y)
  {
    let cell  = this.cells[x][y];
    let pos_x = this.offset_x + (x * this.cell_size);
    let pos_y = this.offset_y + (y * this.cell_size);

    if (cell.type === 'snake')
    {
      m.set_source_rgba(1, 1, 1, 1);
      m.rectangle(pos_x, pos_y, this.cell_size, this.cell_size);
      m.fill();
      m.set_source_rgba(0.0, 0.0, 0.0, 1);
      m.rectangle(pos_x, pos_y, this.cell_size, this.cell_size);
      m.stroke();
    }

    if (cell.type === 'food')
    {
      m.set_source_rgba(0.0, 0.7, 0.0, 1);
      m.rectangle(pos_x, pos_y, this.cell_size, this.cell_size);
      m.fill();
    }

    // if (cell.type === 'empty')
    // {
    //   m.set_source_rgba(0.0, 0.0, 0.0, 1);
    //   m.rectangle(pos_x, pos_y, this.cell_size, this.cell_size);
    //   m.stroke();
    // }
  }

  update_cells()
  {
    for (let x = 0; x < this.cols; x++)
    {
      for (let y = 0; y < this.rows; y++)
      {
        this.show_cell(x, y);
      }
    }
  }
}

class Snake
{
  constructor(grid)
  {
    this.grid      = grid;
    this.direction = {x : 1, y : 0};
    this.body      = [];
    this.size      = 3;
    this.next_cell = null;
  }

  spawn()
  {
    let rand_x, rand_y;

    rand_x = Math.floor(Math.random() * (this.grid.cols - this.size)) + this.size;
    rand_y = Math.floor(Math.random() * this.grid.rows);

    for (let i = 0; i < this.size; i++)
    {
      let cell = {
        x : rand_x - i,
        y : rand_y
      };

      this.body.push(cell);
      this.grid.set_cell(cell.x, cell.y, 'snake');
    }
  }

  grow()
  {
    let last_cell = this.body.at(-1);
    this.body.push({
      x : last_cell.x,
      y : last_cell.y,
    })
  }

  check_cell_type()
  {
    let head   = this.body[0];
    let next_x = head.x + this.direction.x;
    let next_y = head.y + this.direction.y;

    if (next_x < 0) {
      next_x = this.grid.cols - 1;
    }
    if (next_x > this.grid.cols - 1) {
      next_x = 0;
    }
    if (next_y < 0) {
      next_y = this.grid.rows - 1;
    }
    if (next_y > this.grid.rows - 1) {
      next_y = 0;
    }

    let next_cell_type = this.grid.get_cell_type(next_x, next_y);
    this.next_cell     = next_cell_type;

    return this.next_cell;
  }

  update()
  {
    let head = this.body[0];
    // Store previous positions
    let previous = [];
    for (let i = 0; i < this.body.length; i++)
    {
      let cell = {
        x : this.body[i].x,
        y : this.body[i].y,
      };
      previous.push(cell);
    }

    // Clear last cell of the tail
    let last_cell = this.body.at(-1);
    this.grid.set_cell(last_cell.x, last_cell.y, 'empty');

    // Move the head
    head.x += this.direction.x;
    head.y += this.direction.y;

    // Wrap around edges
    if (head.x < 0) {
      head.x = this.grid.cols - 1;
    }
    if (head.x > this.grid.cols - 1) {
      head.x = 0;
    }
    if (head.y < 0) {
      head.y = this.grid.rows - 1;
    }
    if (head.y > this.grid.rows - 1) {
      head.y = 0;
    }

    // Shift tail cells -> follow head
    for (let i = 1; i < this.body.length; i++)
    {
      this.body[i].x = previous[i - 1].x;
      this.body[i].y = previous[i - 1].y;
    }

    for (let i = 0; i < this.body.length; i++)
    {
      this.grid.set_cell(this.body[i].x, this.body[i].y, 'snake');
    }
  }

  is_self_turn(new_direction)
  {
    if (this.body.length < 2) {
      return false
    };

    let head   = this.body[0];
    let second = this.body[1];

    let next_x = head.x + new_direction.x;
    let next_y = head.y + new_direction.y;

    return (next_x == second.x || next_y == second.y);
  }
}

class Food
{
  constructor(grid)
  {
    this.grid = grid;
    this.pos;
  }

  spawn()
  {
    this.pos = {};

    let rand_x;
    let rand_y;

    // re-calculate spawn position if on a snake cell
    do {
      rand_x = Math.floor(Math.random() * this.grid.cols);
      rand_y = Math.floor(Math.random() * this.grid.rows);
    } while (this.grid.get_cell_type(rand_x, rand_y) === 'snake');

    this.pos.x = rand_x;
    this.pos.y = rand_y;

    this.grid.set_cell(this.pos.x, this.pos.y, 'food');
  }
}

class Vector2D
{
  /**
   * @param {number} x
   * @param {number} y
   */
  constructor(x, y)
  {
    this.x = x;
    this.y = y;
  }

  /*
   * Multiply the Vector by n
   * @param {number} n
   * @returns {Vector2D} The multiplied Vector object
   * */
  mult(n)
  {
    this.x *= n;
    this.y *= n;
    return this;
  }

  /*
   * Rotate the Vector by an angle (in radians)
   * @param {number} angle
   * @returns {Vector2D} The rotated Vector object
   * */
  rot(angle)
  {
    let new_x = this.x * Math.cos(angle) - this.y * Math.sin(angle);
    let new_y = this.x * Math.sin(angle) + this.y * Math.cos(angle);

    this.x = new_x;
    this.y = new_y;

    return this;
  }

  /*
   * Normalize the Vector
   * @returns {Vector2D} The normalized Vector object
   * */
  norm()
  {
    let mag = this.mag();
    if (mag !== 0)
    {
      this.x = this.x / mag;
      this.y = this.y / mag;
    }
    return this;
  }

  mag()
  {
    return Math.sqrt(this.x ** 2 + this.y ** 2);
  }

  setMag(mag)
  {
    this.norm();
    this.mult(mag);
    return this;
  }

  /**
   * String representations of the vector's components x and y
   */
  toString()
  {
    return `${this.x}, ${this.y}\n`;
  }

  /**
   * @description Add two vectors
   * @param {Vector2D} v1
   * @param {Vector2D} v2
   * @returns {Vector2D} The summed vector as a new Vector2D object
   * */
  static add(v1, v2)
  {
    return new Vector2D(v1.x + v2.x, v1.y + v2.y);
  }

  /**
   * @description Substract two vectors
   * @param {Vector2D} v1
   * @param {Vector2D} v2
   * @returns {Vector2D} The substracted vector as a new Vector2D object
   * */
  static sub(v1, v2)
  {
    return new Vector2D(v1.x - v2.x, v1.y - v2.y);
  }

  /**
   * Calculate the distance between two vectors
   * @param {Vector2D} v1
   * @param {Vector2D} v2
   * @returns {number} distance
   */
  static dist(v1, v2)
  {
    return Math.sqrt(Math.pow(v1.x - v2.x, 2) + Math.pow(v1.y - v2.y, 2));
  }
}

/* --DRAWING------------------------------------------ */

const m = mgraphics;

m.init();
m.relative_coords = 0;
m.autofill        = 0;

var width  = m.size[0];
var height = m.size[1];

let game = new Game();

game.init();

// bind to not loose the context !
const tick = new Task(game.run.bind(game));
tick.repeat();

function paint()
{
  background();
  game.update();
}

function key_input(k)
{
  game.input(k);
}

function background()
{
  m.set_source_rgba(0.14, 0.12, 0.17, 1);
  m.rectangle(0, 0, width, height);
  m.fill();
}

function onresize(w, h)
{
}

/* --UTILS-------------------------------------------- */

function clip(value, min, max)
{
  return Math.max(Math.min(value, max), min);
}

function deg_to_rad(deg)
{
  return deg * (Math.PI / 180);
}
