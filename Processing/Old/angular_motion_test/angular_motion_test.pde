float amp = 1;
float period = 100;
float theta = 0;
float r = 350;
float x = 0;
float y = 0;

void setup(){
  size(800, 800);
}

void draw(){
  background(200);
  translate(width/2, height/2);
  
  //float theta = amp*sin((period/frameCount)*PI*2);
  
  float x = cos(theta) * r;
  float y = sin(theta) * r;
  
  line(0, 0, x, y);
  ellipse(x, y, 20, 20);
  
  theta += 0.05;
}