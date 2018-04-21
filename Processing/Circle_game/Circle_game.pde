ArrayList<Segment> segments = new ArrayList<Segment>();
Circle c;

float theta;
float n = 1000;
float x = 0;

float jumpForce = -4;
PVector gravity = new PVector(0, 0.15);

float score = 0;

void setup(){
  size(600, 600);
  stroke(255);
  
  //Segment spawning
  for(int i = 0; i < n; i++){
    theta = map(noise(i*10), 0, 1, -0.8, 0.8);
    if(i != 0){
      segments.add(new Segment(segments.get(i-1).x2, segments.get(i-1).y2,  random(30, 100), theta));
    }else{
      segments.add(new Segment(0, height/2,  random(30, 100), theta));
    }
  }
  
  c = new Circle(0, height/2);
  
}

void draw(){
  background(0);
  textSize(40);
  text(int(score), width/2, 40);
  translate(-c.pos.x + width/2, -c.pos.y + height/2);
  
  c.applyForce(gravity);
  c.update();
  c.render();
  
  
  for(Segment s : segments){
    s.render();
  }
}  

void keyPressed(){
  c.vel.y = jumpForce;
  score++;
}