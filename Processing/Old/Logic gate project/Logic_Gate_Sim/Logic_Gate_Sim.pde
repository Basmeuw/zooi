
ArrayList<testObject> objects = new ArrayList<testObject>();


void setup(){
  size(500,500);
  

}

void draw(){
  for (testObject object : objects) {
    object.display();
  }
  
  update();
}

void mousePressed(){
  drawGate();
}

void drawGate(){
  objects.add(new testObject(mouseX, mouseY));
}