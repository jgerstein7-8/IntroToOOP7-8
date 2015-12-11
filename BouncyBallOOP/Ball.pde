class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(10);
    c = color(random(255), random(50), random(100, 255));
  }

  Ball(int tDiam) {
    diam = tDiam;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(10);
    c = color(random(255), random(50), random(100, 255));
  }

  Ball(float tX, float tY) {
    diam = 50;
    loc = new PVector(tX, tY);
    vel = PVector.random2D();
    vel.mult(30);
    c = color(0, 255, 0);
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x > width || loc.x < 0) {
      vel.x *= -1;
    }
    if (loc.y > height || loc.y < 0) {
      vel.y *= -1;
    }
  }

  void run() {
    move();
    bounce();
    display();
  }
}