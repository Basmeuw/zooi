
int screenwidth = 500;
int screenheight = 500;
int half = screenwidth / 2;
  
size(500, 500);
float prevx = -250 ;
float prevy = 0;
float y = 0;
float x = 0;


background(40);

line(screenwidth/2, 0, screenwidth/2, screenheight);
line(0, screenheight/2, screenwidth, screenheight/2);



for(x = -half; x >= -half && x <= half; x++){
  
  
  
  //Formule y = ax + b
  y = 2*x + 100;
  //Formule
  
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

for(x = -half; x >= -half && x <= half; x++){
  
  
  
  //Formule y = ax + b
  y = -7*x - 10;
  //Formule
  
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



  
  
  