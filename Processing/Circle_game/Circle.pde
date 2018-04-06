class Circle{
  PVector pos;
  PVector vel;
  PVector acc;
  
  Circle(float x, float y){
    pos = new PVector(x, y);
    vel = new PVector(3, 0);
    acc = new PVector(0, 0);
  }  
  
  void update(){
    
    
    vel.add(acc);
    pos.add(vel);
    constrain(vel.y, -10, 5);
    
    acc.mult(0);
  }
  
  void applyForce(PVector force){
    // a = F/m 
    // m = 1
    acc.add(force);
  }
  
  void render(){
    noFill();
    strokeWeight(3);
    stroke(200, 100, 0);
    ellipse(pos.x, pos.y, 40, 100);
    
    //rect(pos.x -5, pos.y -5, 10, 10);
  }
}