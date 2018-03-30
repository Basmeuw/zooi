class Cable{
  
  PVector s = new PVector();
  PVector e = new PVector();
  
  Cable(PVector startPoint, PVector endPoint){
    
    this.s = startPoint;
    this.e = endPoint;
    
  }
  
  void update(){
    drawCable();
    
  }
  
  void drawCable(){
    
    
    if(e.x-s.x >= e.y-s.y){
      line(s.x, s.y, e.x/2, s.y);
      line(e.x/2, s.y, e.x/2, e.y);
      line(e.x/2, e.y, e.x, e.y);
    }else{
      line(s.x, s.y, s.x, e.y/2);
      line(s.x, e.y/2, e.x, e.y/2);
      line(e.x, e.y/2, e.x, e.y);
    }
    
    
  }
  
  
}