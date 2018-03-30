class Rigidbody{
  
  PVector lPos;
  PVector lVel;
  PVector lAcc;
  
  PVector force;
  
  BoxShape shape;

  Rigidbody(){
    shape = new BoxShape();
    
    lPos = new PVector(random(width/4, width/4 + width/2), 0);
    lVel = new PVector(0, 0);
    lAcc = new PVector(0, 0);
  }
  
  void update(){
    force = new PVector(computeForce().x, computeForce().y);
    lAcc = new PVector(force.x / shape.mass, force.y / shape.mass);
    lVel.x += lAcc.x * dt;
    lVel.y += lAcc.y * dt;
    lPos.x += lPos.x * dt * posMap;
    lPos.y += lPos.y * dt * posMap;
  }
  
  PVector computeForce(){
    return new PVector(0, shape.mass * gravity);
  }
  
}