ArrayList<Firework> fireworks;

PVector gravity;

void setup(){
  size(1000, 1000);
  stroke(200, 50, 100);
  strokeWeight(10);
  fireworks = new ArrayList<Firework>();
  gravity = new PVector(0, 0.1);
}

void draw(){
  if(random(1) < 0.03){
    fireworks.add(new Firework());
  }
  background(51);
  for(Firework fw : fireworks){
    fw.update();
    fw.render();
  }
}

void mousePressed(){
  fireworks.add(new Firework());
}