Rectangle gun;


//each object with collision should be in here
ArrayList<Rectangle> solidRects = new ArrayList<Rectangle>();
ArrayList<Rectangle> objects = new ArrayList<Rectangle>();


void setup(){
  size(800, 800);
  frameRate(60);
  
  gun = new Rectangle();
  gun.w = 100;
  gun.h = 40;
  gun.pos = new PVector(width/2 - gun.w/5, height/2 - gun.h/2);
  gun.pivot = new PVector(gun.pos.x, gun.pos.y);
  gun.rot = 0;
  gun.c = color(100, 50);
  objects.add(gun);
  
}

void draw(){
  background(200);
  
  gun.rot = getGunRotation(gun.pos.x, gun.pos.y, mouseX, mouseY);
  println(getGunRotation(400, 400, mouseX, mouseY));
  
  //update all objects
  for(Rectangle object : objects){
    object.update();
  }
  
  fill(255, 50);
  ellipse(width/2, height/2, 5, 5);
  
  
  
}

float getGunRotation(float originX, float originY, float targetX, float targetY){
  return acos((targetX - originX) / (targetY - originY));
}