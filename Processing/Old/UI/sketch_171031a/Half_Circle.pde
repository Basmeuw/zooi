class Half_Circle{
  
  int x;
  int y;
  int w;
  int h;
  float rad;
  
  Half_Circle(int x, int y, int w, int h, float deg){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    rad = radians(deg);
  }
  
  void render(){
    stroke(0);
    fill(255);
    ellipseMode(CENTER);
    
    pushMatrix();
    
    translate(x, y);
    rotate(rad);
    translate(-w/2, -h/2);
    arc(0, 0, w, h, -HALF_PI, HALF_PI);
    
    popMatrix();
  }
  
  
  
}