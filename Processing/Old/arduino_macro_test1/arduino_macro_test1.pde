import processing.serial.*;
import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.lang.*;

//sssss

Robot rbt;

Serial myPort;
String val;

boolean buttonState = false;

void setup(){
  //println(Serial.list());
  
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  
  try{
    rbt = new Robot();
  }catch(Exception e){
    e.printStackTrace(); 
  }
  
}

void draw(){
  if(myPort.available() > 0){
    val = myPort.readStringUntil('x');
  }
  
  //println(val);
  
  //buttonState = val.contains("HIGH");
  if(val != null){
    if(val.contains("HIGHx")){
      buttonState = true;
    }else if(val.contains("LOWx")){
      buttonState = false;
    }else{
      println("Error: No valid serial input");
    }
  }
  println(buttonState);
    
  if(buttonState){
    try{
      rbt.setAutoDelay(250);
      rbt.keyPress(KeyEvent.VK_CONTROL);
      rbt.keyPress(KeyEvent.VK_Z);
      rbt.keyRelease(KeyEvent.VK_CONTROL);
      rbt.keyRelease(KeyEvent.VK_Z);
    }catch(Exception e){
      e.printStackTrace();
    }
  }
    
    
}