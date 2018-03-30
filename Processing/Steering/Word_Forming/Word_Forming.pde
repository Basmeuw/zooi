//import org.apache.batik.svggen.font.*;
//import org.apache.batik.svggen.font.table.*;
import geomerative.*;

RPoint[] myPoints;
String myText = "train";
ArrayList<Vehicle> vehicles;


void setup(){

  size(800, 400);

  
  //Setup Geomerative
  RG.init(this);
  
  RFont font = new RFont("font.ttf", 170, RFont.CENTER);
  
  RCommand.setSegmentLength(10);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  RGroup myGroup = font.toGroup(myText);
  myGroup = myGroup.toPolygonGroup();
  
  myPoints = myGroup.getPoints();
  
  vehicles = new ArrayList<Vehicle>();
  
  for(int i=0; i < myPoints.length; i++){
     vehicles.add(new Vehicle(random(width), random(height)));
  }
  
}

void draw(){
  background(51);

  
  translate(width/2, height/2 + 100);
  for(int i=0; i < myPoints.length; i++){
    vehicles.get(i).arrive(new PVector(myPoints[i].x, myPoints[i].y));
    vehicles.get(i).update();
    vehicles.get(i).display();
  }
  
  
  
}