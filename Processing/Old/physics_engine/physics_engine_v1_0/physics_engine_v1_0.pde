//physics engine v1.0
//very simple particles with gravity


//ticks per second
float tickRate = 30;
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

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup(){
  size(800, 800);
  frameRate(60);
  
  
  
  for(int i = 0; i < n; i++){
    particles.add(new Particle());
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
    
    for(Particle particle : particles){
      particle.update();
    }
  }
}