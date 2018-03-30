import processing.serial.*;

Serial myPort;

PImage bg;



void setup(){
  size(600, 600);
  bg = loadImage("led.jpg");
  myPort = new Serial(this, "COM9", 9600);
}

void draw(){
  
  
  background(bg);
  
  if(mousePressed && (mouseButton == LEFT)){
    myPort.write('1');
  }else if(mousePressed && (mouseButton == RIGHT)){
    myPort.write('0');
  }
  
}