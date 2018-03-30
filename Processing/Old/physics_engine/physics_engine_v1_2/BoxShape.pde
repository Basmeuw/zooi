class BoxShape{
  
  //PVector pos;
  float w = 20;
  float h = 20;
  float mass = 1;
  float momentOfInertia = mass * (w*w + h*h) / 12;
  
  Rigidbody rb;
  
  BoxShape(){
    //pos = new PVector(rb.lPos.x, rb.lPos.y);
  }
  
  void update(){
    render();
  }
  
  void render(){
    pushMatrix();
    translate(rb.lPos.x - w/2, rb.lPos.y - h/2);
    rotate(rb.aPos);
    rect(0, 0, w, h);
    popMatrix();
    
    //println(rb.lPos.x + ", " + rb.lPos.y + ", " + rb.lVel.x + ", " + rb.lVel.y);
    println(rb.lVel.y);
  }
}