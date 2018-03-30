class Particle{
  
  PVector pos;
  PVector vel;
  float mass;
  
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
    rect(pos.x, pos.y, 20, 20);
  }

  PVector computeForce(Particle particle){
    return new PVector(0, particle.mass * gravity);
  }

}