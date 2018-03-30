import geomerative.*;
String myText = "train";
RPoint[] myPoints;
ArrayList<Firework> fireworks;

PVector gravity;

void setup(){
  size(1000, 1000);
  stroke(200, 50, 100);
  strokeWeight(10);
  fireworks = new ArrayList<Firework>();
  gravity = new PVector(0, 0.1);
  
  //Setup Geomerative
  RG.init(this);
  
  RFont font = new RFont("font.ttf", 170, RFont.CENTER);
  
  RCommand.setSegmentLength(10);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  RGroup myGroup = font.toGroup(myText);
  myGroup = myGroup.toPolygonGroup();
  
  myPoints = myGroup.getPoints();
  
  for(int i=0; i < myPoints.length; i++){
     myPoints[i].translate(width/2, height/2 + 100);
  }
  
  
}

void draw(){
  background(51);
  
  for(Firework fw : fireworks){
    fw.update();
    fw.render();
  }
}

void mousePressed(){
  fireworks.add(new Firework());
}