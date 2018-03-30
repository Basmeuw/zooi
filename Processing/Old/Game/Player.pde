class Player extends Creature{
  
  public float w, h;
  public PVector pos;
  public PVector vel;
  public PVector acc;
  //Creature c;
  
  Player(){
    pos = new PVector(0, 0);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }
  
  void update(){
    super.w = w;
    super.h = h;
    
    super.pos = pos;
    super.vel = vel;
    super.acc = acc;
    
    super.update();
  }
  
}