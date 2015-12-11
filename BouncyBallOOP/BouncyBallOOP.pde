Ball b;                //declare a new Ball called b
Ball c;
Ball d;

void setup() {
  size(1600, 1200);
  b = new Ball();      //initialize b as a new object of the Ball class
  c = new Ball();
  d = new Ball();
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();
  d.display();
  b.move();
  c.move();
  d.move();

}