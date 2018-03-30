class MiddleBar{
  
  int x;
  int y;
  int w;
  int h;
  
  MiddleBar(int x, int y, int w, int h){
    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    
  }
  
  void render(){
    stroke(0);
    line(x, y, x+w, y);
    line(x, y+h, x+w, y+h);
    
  }
  
}