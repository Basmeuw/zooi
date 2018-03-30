class Cable{
  
  PVector startPoint = new PVector();
  PVector endPoint = new PVector();
  
  Cable(PVector startPoint, PVector endPoint){
    
    this.startPoint = startPoint;
    this.endPoint = endPoint;
    
  }
  
  void update(){
    drawCable();
  }
  
  void drawCable(){
    line(startPoint.x, startPoint.y, endPoint.x, endPoint.y);
  }
  
  
}