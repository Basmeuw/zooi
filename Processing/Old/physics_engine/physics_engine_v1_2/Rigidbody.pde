class Rigidbody{
  
  PVector lPos;
  PVector lVel;
  PVector lAcc;
  float aPos;
  float aVel;
  float aAcc;
  
  PVector force;
  float torque;
  
  BoxShape shape;
  
  
  Rigidbody(){
    lPos = new PVector(random(width/4, width/4 + width/2), height-10);
    lVel = new PVector(0, 0);
    lAcc = new PVector(0, 0);
    
    force = new PVector(0, 0);
  }
  
  void update(){
    shape.update();
    
    ComputeForceAndTorque(this);
    
    lAcc = new PVector(force.x / shape.mass, force.y / shape.mass);
    lVel.x += lAcc.x * dt;
    lVel.y += lAcc.y * dt;
    lPos.x += lVel.x * dt * posMap;
    lPos.y += lVel.y * dt * posMap;
    
    aAcc = torque / shape.momentOfInertia;
    aVel += aAcc * dt;
    aPos += aVel * dt;
  }
  
  void ComputeForceAndTorque(Rigidbody rb){
    PVector f = new PVector(0, -10);
    rb.force = f;
    PVector r = new PVector(rb.shape.w /2, rb.shape.h / 2);
    rb.torque = r.x * f.y - r.y * f.x;
  }
  
}