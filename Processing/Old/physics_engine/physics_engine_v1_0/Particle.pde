class Particle{
  
  
  PVector pos;
  PVector vel;
  float mass;
  
  float w = 20;
  float h = 20;
  
  Particle(){
    pos = new PVector(random(width/4, width/4 + width/2), 0);
    vel = new PVector(0, 0);
    
    mass = 1;
  }
  
  void update(){
    render();
    
    PVector force = new PVector(computeForce(this).x, computeForce(this).y);
    PVector acc = new PVector(force.x / mass, force.y / mass);
    vel.x += acc.x * dt;
    vel.y += acc.y * dt;
    pos.x += vel.x * dt * posMap;
    pos.y += vel.y * dt * posMap;
    
    
  }
  
  void render(){
    rect(pos.x - w/2 , pos.y - h/2, w, h);
    
    
    //the commented ellipse is used to dispay the center of mass
    //ellipse(pos.x, pos.y, 5, 5);
  }

  PVector computeForce(Particle particle){
    return new PVector(0, particle.mass * gravity);
  }

}