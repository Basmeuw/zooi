class Creature extends Rectangle{
  
  public float w, h;
  public PVector pos;
  public PVector vel;
  public PVector acc;
  public float rot;
  public PVector pivot;
  
  public PVector gravity;
  public PVector terminalVel;
  
  
  Creature(){
    
    pos = new PVector(0, 0);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
    
    pivot = new PVector(0, 0);
    
    gravity = new PVector(0, 0.02); 
    terminalVel = new PVector(25, 25); 
  }
  
  void update(){
    
    super.w = w;
    super.h = h;
    
    for(Rectangle r : solidRects){
   
      if(this.intersects(r)){
        //print("COLLISION!!!");
        collision(r);
      }
  
    }
    
    
    //apply all forces
    applyForce(gravity);
    
    //set everything
    constrain(vel.x, -terminalVel.x, terminalVel.x);
    constrain(vel.y, -terminalVel.y, terminalVel.y);
    vel.add(acc);
    pos.add(vel);
    
    
    super.pos = pos;
    super.rot = rot;
    super.pivot = pivot;
    super.update();
  }
  
  void applyForce(PVector force){
    acc.add(force);
  }
  
  void collision(Rectangle other){
    vel.mult(-other.bounciness);
  }
 
   
  
}