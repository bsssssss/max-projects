/* --------------------------------------------------- */

class Ball
{
  constructor(position, radius, color)
  {
    this.position = position;
    this.radius   = radius;
    this.color    = color;

    this.direction_x = 1;
    this.direction_y = 1;
    this.speed_x     = 0;
    this.speed_y     = 21;
    this.velocity_x;
    this.velocity_y;
  }

  draw()
  {
    this.update();
    this.show();
  }

  update()
  {
    this.check_collisions();
    this.velocity_x  = this.speed_x * this.direction_x;
    this.velocity_y  = this.speed_y * this.direction_y;
    this.position.x += this.velocity_x;
    this.position.y += this.velocity_y;
  }

  check_collisions()
  {
    // TODO: Calculate speed adjustment to reach boundaries on next frame

    let nxt_left_bound   = (this.position.x - this.radius) + this.velocity_x;
    let nxt_right_bound  = (this.position.x + this.radius) + this.velocity_x;
    let nxt_lower_bound  = (this.position.y + this.radius) + this.velocity_y;
    let nxt_higher_bound = (this.position.y - this.radius) + this.velocity_y;

    // post(`[${lower_bound}/${height}]\n`);
    // post(`[${nxt_higher_bound}/${height}]\n`);

    if (nxt_left_bound < 0) {
      this.direction_x = 1;
    }
    if (nxt_right_bound > width) {
      this.direction_x = -1;
    }
    if (nxt_higher_bound < 0) {
      this.direction_y = 1;
    }
    if (nxt_lower_bound > height) {
      this.direction_y = -1;
    }
  }

  show()
  {
    m.set_source_rgba(1, 1, 1, 1);
    m.arc(this.position.x, this.position.y, this.radius, 0, deg_to_rad(360));
    m.fill();
  }
}

/* --------------------------------------------------- */

const m = mgraphics;

const task    = new Task(run);
task.interval = 1000 / 2;
task.repeat(-1, 10);

m.init();
m.relative_coords = 0;
m.autofill        = 0;

var width  = m.size[0];
var height = m.size[1];

let balls = [];
init();

function init()
{
  for (let i = 0; i < 1; i++)
  {
    let radius = 10;
    let pos    = {
      x : 0 + radius,
      y : 0 + radius,
    };
    let color = [ 1, 1, 1, 1 ];
    let ball  = new Ball(pos, radius, color);

    balls.push(ball);
  }
}

function paint()
{
  background();

  for (ball of balls)
  {
    ball.show();
  }
}

function run()
{
  ball.update();
  m.redraw();
}

function background()
{
  m.set_source_rgba(0.2, 0.2, 0.2, 1);
  m.rectangle(0, 0, width, height);
  m.fill();
}

function onresize(w, h)
{
  width  = w;
  height = h;
}

function deg_to_rad(v)
{
  return v * (Math.PI / 180);
}
