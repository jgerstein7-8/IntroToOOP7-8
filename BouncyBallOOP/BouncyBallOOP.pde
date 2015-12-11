Ball b;                //declare a new Ball called b
Ball c;
Ball d;

void setup() {
  size(1600, 1200);
  b = new Ball(50);      //initialize b as a new object of the Ball class
  c = new Ball(200);
  d = new Ball(300);
}

void draw() {
  background(0);
  b.move();
  c.move();
  d.move();
  b.bounce();
  c.bounce();
  d.bounce();
  b.display();         //call b's display() method
  c.display();
  d.display();
}