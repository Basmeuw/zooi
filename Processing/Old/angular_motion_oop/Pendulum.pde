class Pendulum{
  
  float aPos = PI/4;
  float aVel = 0;
  float aAcc = 0;
  float r = 200;
  PVector origin;
  PVector bob;
  
  Pendulum(){
    origin = new PVector(width/2, 0);
    bob = new PVector(width/2, r);
  }
  
  void update(){
    background(255);
    
    bob.x = origin.x + r * sin(aPos);
    bob.y = origin.y + r * cos(aPos);

    render();
    
    aAcc = -0.01 * sin(aPos);
    
    aPos += aVel;
    aVel += aAcc;
    
    aVel *= 0.99;
  }
  
  void render(){
    line(origin.x, origin.y, bob.x, bob.y);
    ellipse(bob.x, bob.y, 30, 30);
  }
  
}