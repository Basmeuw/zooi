//physics engine v1.2
//adding rotation


//ticks per second
float tickRate = 60;
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

ArrayList<Rigidbody> rbs = new ArrayList<Rigidbody>();
ArrayList<BoxShape> boxShapes = new ArrayList<BoxShape>();

void setup(){
  size(800, 800);
  frameRate(60);
  
  
  
  for(int i = 0; i < n; i++){
    Rigidbody rb = new Rigidbody();
    rbs.add(rb);
    rbs.get(i).shape = new BoxShape();
    rbs.get(i).shape.rb = rb;
    
    
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
    
    for(Rigidbody rb : rbs){
      rb.update();
    }
  }
}