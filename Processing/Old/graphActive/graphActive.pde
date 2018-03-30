public void setup(){

  size(500, 500);

  background(40);
  
  drawMatrix();
  drawGUI();
  
}

int screenwidth = 500;
int screenheight = 500;
int half = screenwidth / 2;
    
float prevx = -250 ;
float prevy = 0;
float y = 0;
float x = 0;

boolean hasDrawn = false;

int prevMouseX = 0;
int prevMouseY = 0;

int matrixSize = 25;

float graph1[][] = new float[500][2];


void draw(){
  if(!hasDrawn){
    drawGraph(0);
    drawGraph(1);
    hasDrawn = true;
  }
  
  color(255,0,0);
  textSize(15);
  text("(" + (mouseX - 250) + "," + (mouseY - 250) + ")", 10, 20);
  
  
  
}

void drawGraph(int n){
  for(x = -half; x >= -half && x <= half; x++){
    
    int i = (int) x;
    int d = 100;
    int c = -100;
    if(n == 0){
      //Formule y = ax + b
      y = C((int)x, 50, 50) * 2*x;
      //Formule
    }/*else if(n == 1){
      y = -7*x - 10;
    }*/
    
    println("(" + x + "," + y + ")");
    stroke(255);
    
    if(x == -half){
      line(x + half, -y + half, x + half, -y + half);
    }else{
      line(prevx + half, -prevy + half, x + half, -y + half);
    }
    
    
    
    prevx = x;
    prevy = y;
    
  }
}

void drawMatrix(){

  for(int i = 0; i < screenwidth; i += matrixSize){
    stroke (50);
    line(i, 0, i, screenheight); 
    line(0, i, screenwidth, i);
  }
  stroke(0);
  //x and y axis
  line(screenwidth/2, 0, screenwidth/2, screenheight);
  line(0, screenheight/2, screenwidth, screenheight/2);
}

void drawGUI(){
    
  fill(20);
  stroke(20);
  rect (0, 0, 500, 30);
  


}

float C(int x, int c, int d){
  return sqrt((abs(abs(x - (d + c)/2 )) - ((d-c)/2)) / ((d - c) / 2) - abs(x - ((d + c) / 2)));
}

  




  
  
  