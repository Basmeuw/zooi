//physics engine v1.1b DOENST WORK 1.1a does
//made the structure better with seperating a shape and a body
//in this version I tried extend boxShape from Rigidbody because i was getting recursion errors from the constructors


//ticks per second
float tickRate = 1;
//difference in time between the previous tick and this one
float dt = 1/tickRate;
int totalTicks = 0;
//time it should run for in ticks
int runTime = 1000;

//var multiplied to all positions for more realism
int posMap = 20;

//amount of particles in the scene
int n = 2;

float gravity = 9.81;

ArrayList<BoxShape> objects = new ArrayList<BoxShape>();

void setup(){
  size(800, 800);
  frameRate(60);
  
  
  
  for(int i = 0; i < n; i++){
    objects.add(new BoxShape());
  }
  
}

void draw(){
  background(200);
  
  fixedUpdate();
}

void fixedUpdate(){
  if(totalTicks <= runTime){
    delay((int)(dt*1000));
    totalTicks++;
    print("tick");
    
    for(BoxShape obj : objects){
      obj.update();
    }
  }
}