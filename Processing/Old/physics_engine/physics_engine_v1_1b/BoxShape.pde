class BoxShape extends Rigidbody{
  
  float w = 20;
  float h = 20;
  float mass = 1;
  
  
  BoxShape(){

  }
  
  void update(){
    super.update();
    render();
  }
  
  void render(){
    rect(lPos.x - w/2, lPos.y - h/2, w, h);
  }
}