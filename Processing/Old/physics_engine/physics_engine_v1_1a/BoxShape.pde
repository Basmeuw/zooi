class BoxShape{
  
  //PVector pos;
  float w = 20;
  float h = 20;
  float mass = 1;
  
  Rigidbody rb;
  
  BoxShape(){
    //pos = new PVector(rb.lPos.x, rb.lPos.y);
  }
  
  void update(){
    render();
  }
  
  void render(){
    rect(rb.lPos.x - w/2, rb.lPos.y - h/2, w, h);
    println(rb.lPos.x + ", " + rb.lPos.y + ", " + rb.lVel.x + ", " + rb.lVel.y);
  }
}