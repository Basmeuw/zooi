import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

Vector3 pos;
Vector3 vel;

PImage tex;

QueasyCam cam;

Block block;

void setup() {
   size(1000, 800, P3D);
   
   cam = new QueasyCam(this);
   cam.sensitivity = 0.5;
   cam.speed = 2;
   
   block = new Block(0, 0, 0);
   
   tex = loadImage("texture1.jpg");
   
   pos = new Vector3();
   vel = new Vector3();
   

   
}

void draw() {
  
   
   pos.add(vel);
   //vel.x = 0;
   
   pos.vprintln();
   vel.vprintln();
   
  
   
   render();
}

void render(){
  background(0);
  rotateX(PI/2);
  
  pushMatrix();
  translate(0, 0, 0);
  
  
  //x
  stroke(200, 0, 0);
  box(3000, 0, 0);
  //y
  stroke(0, 0, 200);
  box(0, 0, 3000);
  //z
  stroke(0, 200, 0);
  box(0, 3000, 0);
  
  popMatrix();
  
  stroke(255);
  fill(255);
  
  block.render();
  
  //translate(-width/2, -height/2);
  //textureMode(NORMAL);
  //beginShape();
  //texture(tex);
  //vertex(0, 0, 0, 0);          //TL
  //vertex(500, 0, 1, 0);      //TR
  //vertex(500, 500, 1, 1);  //BR
  //vertex(0, 500, 0, 1);      //BL
  //endShape();
  
  //beginShape();
  //texture(tex);
  //vertex(0, 0, 0, 0);          //TL
  //vertex(100, 0, 100, 0);      //TR
  //vertex(100, 100, 100, 100);  //BR
  //vertex(0, 100, 0, 100);      //BL
  //endShape();
  
  //translate(0, 0, 0);
  //rectMode(CENTER);
  //rect(0, 0, 100, 100);
   
}