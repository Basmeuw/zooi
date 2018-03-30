Pendulum p;
Pendulum p2;

void setup(){
  size(800, 800);
  
  p = new Pendulum();
  p2 = new Pendulum();
  p2.aPos = PI/2;
  
}

void draw(){
  background(200);
  p2.origin = new PVector(p.bob.x, p.bob.y);
  p.update();
  p2.update();
}