//Cable script for the logic gate project

ArrayList<Cable> cables = new ArrayList<Cable>();
Cable tempCable;

PVector startPoint = new PVector(0, 0);
PVector endPoint = new PVector(0, 0);

PVector finalStartPoint = new PVector(0, 0);
PVector finalEndPoint = new PVector(0, 0);

boolean firstPress = true;
boolean isDrawing = false;

void setup(){
  size(600, 600);
  
  
  
  //cables.add(new Cable(new PVector(150, 150), new PVector(300, 300)));
  //cables.add(new Cable(new PVector(150, 150), new PVector(400, 200)));
  
}

void draw(){
  background(200);
  tempCable = new Cable(startPoint, endPoint);
  
  for(Cable cable : cables){
    cable.update();
    
  }
  if(isDrawing){
    updateTempCable();
  }
  
  //println(cables.size());
}

void updateTempCable(){
  
  endPoint.x = mouseX;
  endPoint.y = mouseY;
  tempCable.update();
}

void mousePressed(){
  println("mouse!");
  isDrawing = true;
  
  if(firstPress){
    startPoint.x = mouseX;
    startPoint.y = mouseY;
    firstPress = false;
  }else{
    isDrawing = false; 
    
    finalStartPoint = startPoint;
    finalEndPoint = endPoint;
    
    cables.add(new Cable(finalStartPoint, finalEndPoint));
    firstPress = true;
  }
  
  
}