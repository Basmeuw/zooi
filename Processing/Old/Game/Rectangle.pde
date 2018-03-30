class Rectangle{
  
  public PVector pos;
  public float w, h;
  public color c;
  public float bounciness = 0;
  
  Rectangle(){
    pos = new PVector(0, 0);
  }
  
  void update(){
    
    
    render();
  }
  
  void render(){
    fill(c);
    rect(pos.x, pos.y, w, h);
  }
  
  boolean intersects(Rectangle other){
    //collision detection
    println(w + ", " + h);
    println(other.w + ", " + other.h);
    if((pos.x + w) >= other.pos.x){
      println("statement 1 (x) is true");
      if(pos.x <= (other.pos.x + other.w)){
        println("statement 2 (x) is true");
        if((pos.y + h) >= other.pos.y){
          println("statement 3 (y) is true");
          if(pos.y <= (other.pos.y + other.h)){
            println("statement 4 (y) is true");
            return true;
          }
        }
      }
    }
    return false;
  }
  
}