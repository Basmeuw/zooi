class Rigidbody{
  
  PVector lPos;
  PVector lVel;
  PVector lAcc;
  
  PVector force;
  
  BoxShape shape;
  
  
  Rigidbody(){
    lPos = new PVector(random(width/4, width/4 + width/2), 100);
    lVel = new PVector(3.536, -3.536);
    lAcc = new PVector(0, 0);
    
    
  }
  
  void update(){
    shape.update();
    
    force = new PVector(computeForce(this).x, computeForce(this).y);
    lAcc = new PVector(force.x / shape.mass, force.y / shape.mass);
    lVel.x += lAcc.x * dt;
    lVel.y += lAcc.y * dt;
    lPos.x += lVel.x * dt * posMap;
    lPos.y += lVel.y * dt * posMap;
  }
  
  PVector computeForce(Rigidbody rb){
    return new PVector(0, rb.shape.mass * gravity);
  }
  
}