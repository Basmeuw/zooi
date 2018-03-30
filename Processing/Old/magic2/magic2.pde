Rectangle gun;




//each object with collision should be in here
ArrayList<Rectangle> solidRects = new ArrayList<Rectangle>();
ArrayList<Rectangle> objects = new ArrayList<Rectangle>();

ArrayList<Rectangle> bullets = new ArrayList<Rectangle>();


void setup(){
  size(800, 800);
  frameRate(60);
  
  //gun setup
  gun = new Rectangle();
  gun.w = 10;
  gun.h = 10;
  gun.pos = new PVector(width/2 - gun.w/2, height/2 - gun.h/2);
  gun.pivot = new PVector(gun.pos.x + gun.w/2, gun.pos.y + gun.h/2);
  gun.rot = 0;
  gun.c = color(100, 50);
  objects.add(gun);
  
  
}

void draw(){
  background(200);
  
  //coord text
  fill(255);
  textSize(20);
  //text(mouseX + ", " + mouseY, mouseX + 5, mouseY - 5);
  
  //center marker
  fill(255, 50);
  ellipse(width/2, height/2, 5, 5);
  
  
  
  //gun rotation calculation
  gun.rot = getGunRotation(gun.pivot.x, gun.pivot.y, mouseX, mouseY) - PI/2;
  println(degrees(getGunRotation(gun.pivot.x, gun.pivot.y, mouseX, mouseY)));
  
  //bullet spawning
  if(mousePressed){
    
    Creature bullet = new Creature();
    bullet.w = 10;
    bullet.h = 5;
    bullet.pos = new PVector(gun.pos.x + gun.w, gun.pos.y + gun.h/2);
    bullet.vel = new PVector(1, 1);
    bullet.pivot = new PVector(gun.pivot.x, gun.pivot.y);
    bullet.rot = gun.rot;
    bullet.c = color(200, 0, 0, 50);
    bullet.hasGravity = false;
    objects.add(bullet);
    bullets.add(bullet);
    
    
    
    /*
    bullets.add(new Rectangle());
    bullets.get(0).w = 10;
    bullets.get(0).h = 5;
    bullets.get(0).pos = new PVector(gun.pos.x + gun.w, gun.pos.y + gun.h/2);
    bullets.get(0).pivot = new PVector(gun.pivot.x, gun.pivot.y);
    bullets.get(0).rot = gun.rot;
    bullets.get(0).c = color(200, 0, 0, 50);
    objects.add(bullets.get(0));
    */
  }
  
  
  
  
  //update all objects
  for(Rectangle object : objects){
    object.update();
  }
  
}

float getGunRotation(float originX, float originY, float targetX, float targetY){
  return atan2((targetY - originY), (targetX - originX)) + PI/2;
}