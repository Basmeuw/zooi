
  
  // Zoom and Pan script
  
  float scale = 1;
  float xPan = 0;
  float yPan = 0;
  
  float scrollValue = 0;
  
  float zoomMultiplier = 0.05;
  float panSpeed = 5;
  
  boolean panUp = false;
  boolean panDown = false;
  boolean panLeft = false;
  boolean panRight = false;
  
  
    
    
  
  
  void update(){
    
  
    constrain(scale, 0.1, 2);
    translate(width/2, height/2);
    scale(scale);
    translate(xPan, yPan);
    background(200);
    
    
    fill(255, 0, 0);
    ellipse(width/2, height/2, 200, 200);
    fill(0, 255, 0);
    rect(350, 450, 100, 100);
    
    
    
    if(scrollValue < 0){
      scale += zoomMultiplier;
    }else if(scrollValue > 0 ){
      scale -= zoomMultiplier;
    }
    
    scrollValue = 0;
    println(scale);  
    
    
    if(panUp){
      yPan += panSpeed;
    }
    if(panDown){
      yPan -= panSpeed;
    }
    if(panLeft){
      xPan += panSpeed;
    }
    if(panRight){
      xPan -= panSpeed;
    }
    
  }
  
  void mouseWheel(MouseEvent event){
    
    scrollValue = event.getCount();
    //println(scrollValue);
  }
  
  void keyPressed(){
    
    if(key == 'w'){
      panUp = true;
      panDown = false;
    }
    if(key == 's'){
      panDown = true;
      panUp = false;
    }
    if(key == 'a'){
      panLeft = true;
      panRight = false;
    }
    if(key == 'd'){
      panRight = true;
      panLeft = false;
    }
  }
  
  void keyReleased(){
    
    if(key == 'w'){
      panUp = false;
    }
    if(key == 's'){
      panDown = false;
    }
    if(key == 'a'){
      panLeft = false;
    }
    if(key == 'd'){
      panRight = false;
    }
    
  }