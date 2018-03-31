class Firework{
  
  Particle firework;
  ArrayList<Particle> subparticles;
  boolean exploded = false;
  float r = 100;
  float lifespan = 255;
  
  float[][] colors = new float[][]{
    {255, 50, 100},
    {50, 100, 255},
    {181, 21, 45},
    {56, 224, 44},
    {39, 206, 206},
    {216, 139, 23}
  };
  
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
    }else{
       lifespan -= 4;
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
      p.vel.mult(random(2, 6));
      subparticles.add(p);
    }
    
  }
  
  void render(){
    strokeWeight(6);
    if(!exploded){
      firework.render();
    }
    

    stroke(colors[(int)random(colors.length)][0], colors[(int)random(colors.length)][1], colors[(int)random(colors.length)][2], lifespan);
    for(Particle sp : subparticles){
       sp.render();
    }
    
  }
    
}