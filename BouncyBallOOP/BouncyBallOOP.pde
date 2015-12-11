int count = 200;
Ball[] balls = new Ball[count];

void setup() {
  size(1600, 1200);

  int i = 0;
  while (i < count) {
    balls[i] = new Ball(random(25, 300));      //initialize b as a new object of the Ball class
    i++;
  }
}

void draw() {
  background(0);

  int i = 0;
  while (i < count) {
    balls[i].run();
    i++;
  }
}