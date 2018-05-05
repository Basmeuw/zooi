class Blob {
  float x1, y1, x2, y2;
  float threshold = 50;
  
  Blob(float x, float y){
    x1 = x;
    y1 = y;
    x2 = x;
    y2 = y;
  }
  
  void show(){
    stroke(0);
    fill(255);
    strokeWeight(2);
    rectMode(CORNERS);
    rect(x1, y1, x2, y2);
  }
  
  void add(float x, float y){
    //Processing min() method
    //Returns the smallest of x1 and x
    x1 = (x1 < x) ? x1 : x;
    y1 = (y1 < y) ? y1 : y;
    x2 = (x2 > x) ? x2 : x;
    y2 = (y2 > y) ? y2 : y;
  }
  
  float area(){
    return((x2-x1)*(y2-y1));
  }
  
  boolean isNear(float x, float y){
    float cx = (x1+x2)/2;
    float cy = (y1+y2)/2;
    
    float d = abs((x-cx)*(x-cx) + (y-cy)*(y-cy));
    
    return(d < threshold*threshold);
  }
}