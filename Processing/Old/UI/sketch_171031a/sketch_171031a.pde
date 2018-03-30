Slider slider;


void setup(){
  
  size(600, 600);
  
  
  slider = new Slider(175,300,400,40);

  
  
}

void draw(){
  
  
  background(255);
  slider.render();

  
}