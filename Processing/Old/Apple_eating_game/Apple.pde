class Apple extends Creature{
  
  public float w, h;
  public PVector pos;
  public PVector vel;
  public PVector acc;
  
  public color appleColor = color(0, 200, 0);
  public color boxColor = color(255, 50);
  
  Apple(){
    pos = new PVector(0, 0);
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }  
  
  void update(){
    render();
  }
  
  void render(){
    ellipse(pos.x, pos.y, w, h);
    
    super.w = w;
    super.h = h;
    
    super.pos = pos;
    super.vel = vel;
    super.acc = acc;
    super.update();
  }


}