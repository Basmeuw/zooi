import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Circle_game extends PApplet {

ArrayList<Segment> segments = new ArrayList<Segment>();
Circle c;

float theta;
float n = 1000;
float x = 0;

float jumpForce = -4;
PVector gravity = new PVector(0, 0.15f);

float score = 0;

public void setup(){
  
  stroke(255);
  
  //Segment spawning
  for(int i = 0; i < n; i++){
    theta = map(noise(i*10), 0, 1, -0.8f, 0.8f);
    if(i != 0){
      segments.add(new Segment(segments.get(i-1).x2, segments.get(i-1).y2,  random(30, 100), theta));
    }else{
      segments.add(new Segment(0, height/2,  random(30, 100), theta));
    }
  }
  
  c = new Circle(0, height/2);
  
}

public void draw(){
  background(0);
  textSize(40);
  text(PApplet.parseInt(score), width/2, 40);
  translate(-c.pos.x + width/2, -c.pos.y + height/2);
  
  c.applyForce(gravity);
  c.update();
  c.render();
  
  
  for(Segment s : segments){
    s.render();
  }
}  

public void keyPressed(){
  c.vel.y = jumpForce;
  score++;
}
class Circle{
  PVector pos;
  PVector vel;
  PVector acc;
  
  Circle(float x, float y){
    pos = new PVector(x, y);
    vel = new PVector(3, 0);
    acc = new PVector(0, 0);
  }  
  
  public void update(){
    
    
    vel.add(acc);
    pos.add(vel);
    constrain(vel.y, -10, 5);
    
    acc.mult(0);
  }
  
  public void applyForce(PVector force){
    // a = F/m 
    // m = 1
    acc.add(force);
  }
  
  public void render(){
    noFill();
    strokeWeight(3);
    stroke(200, 100, 0);
    ellipse(pos.x, pos.y, 40, 100);
    
    //rect(pos.x -5, pos.y -5, 10, 10);
  }
}
class Segment{
  
  float r, theta, x, y, x2, y2;

  Segment(float x, float y, float r, float theta){
    this.r = r;
    this.theta = theta;
    this.x = x;
    this.y = y;
    x2 = cos(theta) * r + x;
    y2 = sin(theta) * r + y;
  }
  
  public void update(){
    
  }
  
  public void render(){
    strokeWeight(3);
    stroke(200, 100, 200);
    line(x, y, x2, y2);
  }
}
  public void settings() {  size(600, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Circle_game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
