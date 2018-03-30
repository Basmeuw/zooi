Cable c;

void setup(){
  c = new Cable(new PVector(10, 10), new PVector(100, 100));
  size(600, 600);
  background(200);
}

void draw(){
  c.update();
  
}