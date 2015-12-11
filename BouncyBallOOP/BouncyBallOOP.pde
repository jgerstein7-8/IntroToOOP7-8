int count = 200;
Ball[] balls = new Ball[count];

void setup() {
  size(1600, 1200);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(random(25, 300));      //initialize b as a new object of the Ball class
  }
}

void draw() {
  background(0);
  for (int i = 0; i < balls.length; i++) {
    balls[i].run();
    if (dist(balls[i].loc.x, balls[i].loc.y, mouseX, mouseY) < balls[i].diam/2) {
      balls[i].c = color(0, random(100, 255), random(255));
    }
  }
}