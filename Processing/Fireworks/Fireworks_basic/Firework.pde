class Firework{
  
  Particle firework;
  ArrayList<Particle> subparticles;
  boolean exploded = false;
  float r = 100;
  
  Firework(){
    firework = new Particle(random(width), height);
    firework.vel = new PVector(0, random(-12, -7));
    
    subparticles = new ArrayList<Particle>();
  }
  
  void update(){
    if(!exploded){
      firework.update();
      firework.applyForce(gravity);
      
      if(firework.vel.y >= 0){
        exploded = true;
        explode();
      }
    }
    
    for(Particle sp : subparticles){
      sp.update();
      sp.applyForce(gravity);
    }
  }
  
  void explode(){
    for(int i=0; i < 100; i++){
      //Particle p = new Particle(firework.pos.x + cos(map(i, 0, 100, 0, 2*PI)) * r, firework.pos.y + sin(map(i, 0, 100, 0, 2*PI)) * r);
      Particle p = new Particle(firework.pos.x, firework.pos.y);
      p.vel = PVector.random2D();
      p.vel.mult(random(1, 3));
      subparticles.add(p);
    }
    
  }
  
  void render(){
    if(!exploded){
      firework.render();
    }
    
    for(Particle sp : subparticles){
       sp.render();
    }
    
  }
    
}