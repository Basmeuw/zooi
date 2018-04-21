Segment seg1;
Segment seg2;

void setup(){
  size(600, 400);
  seg1 = new Segment(width/2, 200, 100, radians(20));
  seg2 = new Segment(seg1, 100, radians(50));
}

void draw(){
  background(51);
  
  seg1.wiggle();
  seg1.update();
  seg2.update();
  seg1.render();
  seg2.render();
}