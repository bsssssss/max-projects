/* --------------------------------------------------- */

class Ball
{
  constructor(position, radius, color)
  {
    this.position = position;
    this.radius   = radius;
    this.color    = color;

    this.speed_x = 6;
    this.speed_y = 1;
  }

  draw()
  {
    this.update();
    this.show();
  }

  update()
  {
    this.position.x += 1 * this.speed_x;
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
task.interval = 1000 / 30;
task.repeat();

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
  width  = m.size[0];
  height = m.size[1];
  background();

  for (ball of balls)
  {
    ball.draw();
  }
}

function run()
{
  m.redraw();
}

function background()
{
  m.set_source_rgba(0.2, 0.2, 0.2, 1);
  m.rectangle(0, 0, width, height);
  m.fill();
}

function deg_to_rad(v)
{
  return v * (Math.PI / 180);
}
