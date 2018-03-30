float x;
float y;

void setup(){
  size(800, 800);
  background(200);
}

void draw(){
  for(float x = 0; x <= width; x++){
    y = 2*x;
    
    
    pushMatrix();
    translate(x, -y + height);
    strokeWeight(2);
    line(0, 0, 0, 0);
    popMatrix();
  }
}