Player p;

void setup(){
  size(800, 800);
  p = new Player();
}

void draw(){
  background(200);
  
  p.update();
}

void keyPressed(){
  if(key == 'w'){
    p.pos.y -= p.speed;
  }
  else if(key == 's'){
    p.pos.y += p.speed;
  }
  if(key == 'a'){
    p.pos.x -= p.speed;
  }
  else if(key == 'd'){
    p.pos.x += p.speed;
  }
}