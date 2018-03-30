class Handle{
  
  int x;
  int y;
  int d;
  int c = 100;
  int mx;
  int my;
  int prevmx;
  int prevmy;
  
  
  boolean isInside;
  boolean firstTime;
  boolean isHolding;
  
  
  Handle(int x, int y, int d){
    
    this.x = x;
    this.y = y;
    this.d = d;

  }
  
  void setup(){
    
  }
  
  void draw(){
    
  }
  
  void render(){

    fill(c);
    stroke(0);
    ellipseMode(CENTER);
    
    pushMatrix();
    
    translate(20, d/2);
    ellipse(x, y, d, d);
    
    popMatrix();
    

  }
  
  void check(){
    mx = mouseX;
    my = mouseY;
    

    
    if (mx > x+10 & mx < x+d+10 & my > y & my < y+d){
      isInside = true;
      c += 50;
    }else{
      isInside = false;
    }

    prevmx = mx;
    prevmy = my;
    

  }
  
  void mouseDragged(){
    if(mouseButton == LEFT){
      if(!isHolding){
        if(isInside){
          x += prevmx - mx;
          isHolding = true;
        }
      }else{
         x += prevmx - mx;
         isHolding = true;
      }
    }

  }
  
  void mousePressed(){
    
    if(!(mouseButton == LEFT)){
      
      isHolding = false;
      
    }
    
  }
}