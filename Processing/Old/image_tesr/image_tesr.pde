PImage pic;
float y = 0;
float x = 0;

void setup(){
  size(960, 540);
  
  background(0);
  pic = loadImage("bg1.jpg");
  
  
}

void draw(){
  //image(pic, 0, 0);
  
  
  
  for (int i = 0; i < 960; i++){
    color c = pic.get((int) x, (int) y);
    stroke();
    
    //point(x, y);
    set()
    
    if(x >= width){
      y++;
      x = 0;
    }else{
      x++;
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*for(float x = 0; x < width; x+=1){
    for(float y = 0; y < height; y+=1){
      
      color c = pic.get((int) x, (int) y);
      
      
      stroke(c);
      point(x, y);
      
    }
    
  }*/
  
  /*for(int i = 0; i < 5000; i++){
  
    float x = random(width);
    float y = random(height);
    
    color c = pic.get((int) x, (int) y);
    
    
    stroke(c);
    ellipse(x, y, 1, 1);
  
  }*/
  
  //println(frameRate * 20000);
  //println(frameCount * 20000);
}