public void setup(){
  
  
  size(500,500);
  
  background(40);
  
  drawMatrix();
  
}

int mouseX1;
int mouseX2;
int mouseY1;
int mouseY2;

boolean hasPressed;
boolean hasPressed2;

int matrixSize = 25;

float half = 250;

void draw(){
  
  if(hasPressed2){
      
      line(mouseX1, mouseY1, mouseX2, mouseY2); 
      hasPressed = false;
      hasPressed2 = false;
      printGraph();
  }
  /*else if(hasPressed){
    
    line(mouseX1, mouseY1, mouseX, mouseY); 
    
    
  }*/
  
  
}

void drawMatrix(){

  for(int i = 0; i < width; i += matrixSize){
    stroke (50);
    line(i, 0, i, height); 
    line(0, i, width, i);
  }
  stroke(0);
  //x and y axis
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
}

void mousePressed(){
  
  if(!hasPressed){
    
    mouseX1 = mouseX;
    mouseY1 = mouseY;
    
    hasPressed = true;
    
  }else{
    
    mouseX2 = mouseX;
    mouseY2 = mouseY;
    
    hasPressed2 = true;
    
  }
  
}

void printGraph(){
  
  //y = ax + b
  float x1 = mouseX1 - half;
  float x2 = mouseX2 - half;
  float y1 = -mouseY1 + half;
  float y2 = -mouseY2 + half;
  
  float a = (y2 - y1)/(x2 - x1);
  
  //b = -ax + y

  float b = -a * x1 + y1;
  println("("+mouseX1+", "+mouseY1+"), ("+mouseX2+", "+mouseY2+")" );
  println("("+x1+", "+y1+"), ("+x2+", "+y2+")" );
  
  float c = x1;
  float d = x2;
  
  String formula;
  formula = "y = "+a+"x * sqrt((abs(abs( x - ("+d+" + "+c+")/2 )) - (("+d+"-"+c+")/2)) / (("+d+" - "+c+") / 2) - abs(x - (("+d+" + "+c+") / 2))) + "+b;
  
  println(formula);
}