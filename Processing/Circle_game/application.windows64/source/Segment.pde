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
  
  void update(){
    
  }
  
  void render(){
    strokeWeight(3);
    stroke(200, 100, 200);
    line(x, y, x2, y2);
  }
}