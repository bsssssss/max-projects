class Snake {
  constructor() {
    this.x      = 0;
    this.y      = 0;
    this.speedx = 1;
    this.speedy = 0;
  }

  update() {
    this.x = this.x + this.speedx;
    this.y = this.y + this.speedy;
  }

  show() {
    m.set_source_rgba(1, 1, 1, 1);
    m.rectangle(this.x, this.y, 5, 5);
    m.fill();
  }
}

exports.Snake = Snake;
