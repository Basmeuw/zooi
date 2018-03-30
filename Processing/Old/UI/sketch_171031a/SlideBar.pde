Half_Circle hcleft;
Half_Circle hcright;
MiddleBar middlebar;

class SlideBar{
  
  int x;
  int y;
  int w;
  int h;
  //circle to bar ratio
  int ctbr;
  
  SlideBar(int x, int y, int w, int h){
    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    ctbr = w/10;
    
    
  }
  
  
  void render(){
    
    hcleft = new Half_Circle(x+ctbr/2, y, ctbr, h, 180);
    hcright = new Half_Circle(x + w-ctbr/2 , y+h, ctbr, h, 0);
    middlebar = new MiddleBar(x + ctbr, y, w - 2*ctbr, h);
    
    
    hcleft.render();
    hcright.render();
    middlebar.render();
    
  }
  
}