class Segment{
  
//  float r, theta, x, y, x2, y2;
  PVector a;
  PVector b;
  float r;
  float theta;
  
  Segment parent;
  
  Segment(float x, float y, float r, float theta){
     parent = null;
    
    this.r = r;
    this.theta = theta;
    a = new PVector(x, y);

    calculateB();

  }
  
  Segment(Segment parent_, float r, float theta){
    parent = parent_;
    
    this.r = r;
    this.theta = theta;
    a = parent.b.copy();
    
    calculateB();

  }
  
  void wiggle(){
    theta += 0.01;
  }
  
  void calculateB(){
    float x2 = cos(theta) * r + a.x;
    float y2 = sin(theta) * r + a.y;
    b = new PVector(x2, y2);
  }
  
  void update(){
    if(parent != null){
      a = parent.b.copy();
    }

    
    calculateB();
  }
  
  void render(){
    strokeWeight(3);
    stroke(255);
    line(a.x, a.y, b.x, b.y);
  }
}