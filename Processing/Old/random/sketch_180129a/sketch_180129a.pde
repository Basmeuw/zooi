float prevMouseX;
float prevMouseY;

void setup(){
  size(800, 800);
  background(200);
  
  
}

void draw(){
  if(mousePressed){
    strokeWeight(4);
    line(prevMouseX, prevMouseY, mouseX, mouseY);
    prevMouseX = mouseX;
    prevMouseY = mouseY;
  }
}