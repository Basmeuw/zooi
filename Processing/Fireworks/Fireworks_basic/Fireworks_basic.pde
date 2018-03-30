ArrayList<Particle> fireworks;

PVector gravity;

void setup(){
  size(600, 600);
  stroke(255);
  strokeWeight(10);
  fireworks = new ArrayList<Particle>();
  gravity = new PVector(0, 0.1);
}

void draw(){
  background(51);
  for(Particle firework : fireworks){
    firework.update();
    firework.applyForce(gravity);
  }
}

void mousePressed(){
  fireworks.add(new Particle(random(width), height));
}