Player p;
Apple a;
Rectangle ground;
Rectangle wall;

//each object with collision should be in here
ArrayList<Rectangle> solidRects = new ArrayList<Rectangle>();
ArrayList<Rectangle> objects = new ArrayList<Rectangle>();

ArrayList<Creature> apples = new ArrayList<Creature>();


void setup(){
  size(800, 800);
  frameRate(60);
  
  
  p = new Player();
  p.w = 40;
  p.h = 40;
  p.pos = new PVector(width/2 - p.w/2, height/2 - p.w/2);
  p.vel = new PVector(5, 5);
  p.c = color(200, 0, 0);
  objects.add(p);
  
  a = new Apple();
  a.w = 40;
  a.h = 40;
  a.pos = new PVector(width/2 - a.w/2, height/2 - a.w/2);
  a.vel = new PVector(0, 2);
  objects.add(a);
  
  
  
  
  
  
  /*
  ground = new Rectangle();
  ground.pos = new PVector(0, 780);
  ground.w = 800;
  ground.h = 20;
  ground.bounciness = 1;
  ground.c = color(209, 0, 200);
  solidRects.add(ground);
  objects.add(ground);
  
  wall = new Rectangle();
  wall.pos = new PVector(780, 0);
  wall.w = 20;
  wall.h = 800;
  wall.c = color(209, 0, 200);
  solidRects.add(wall);
  objects.add(wall);
  
  println(ground.w + ", " + ground.h);
  println(wall.w + ", " + wall.h);
  */
}

void draw(){
  background(200);
  
  
  
  
  
  
  
  
  
  
  
  //update all objects
  for(Rectangle object : objects){
    object.update();
  }
  
}

void spawnApple(){
  
}