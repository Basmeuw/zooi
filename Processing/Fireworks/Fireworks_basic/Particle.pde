class Particle{
  
  PVector pos;
  PVector vel;
  PVector acc;
  
  Particle(float x, float y){
    
    pos = new PVector(x, y);
    vel = new PVector(0, random(-10, -12));
    acc = new PVector(0, 0);
  
  }
  
  void update(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    render();
  }
  
  void applyForce(PVector force){
    acc.add(force);
  }
  
  void render(){
    point(pos.x, pos.y);
  }
  
  
}