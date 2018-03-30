class testObject{
  
  float x;
  float y;
  float w = 50;
  float h = 50;
  
  testObject(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
    rect(x - w/2, y - w/2, w, h);
  }
  
}