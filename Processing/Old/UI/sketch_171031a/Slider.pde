SlideBar slidebar;
Handle handle;

class Slider{
  
  int x;
  int y;
  int w;
  int h;
  
  Slider(int x, int y, int w, int h){
    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

  }
  
  void render(){
    slidebar = new SlideBar(x, y, w, h);
    handle = new Handle(x, y, h);
    
    slidebar.render();
    handle.check();
    handle.render();
  }
  
  
}