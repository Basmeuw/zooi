class Firework{
  
  Vehicle firework;
  ArrayList<Vehicle> subvehicles;
  boolean exploded = false;
  float n;
  
  Firework(){
    firework = new Vehicle(random(width), height);
    firework.vel = new PVector(0, random(-12, -7));
    
    n = myPoints.length;
    subvehicles = new ArrayList<Vehicle>();
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
      pushMatrix();
      for(int i=0; i < n; i++){
        //sp.applyForce(gravity);
        subvehicles.get(i).arrive(new PVector(myPoints[i].x, myPoints[i].y));
        subvehicles.get(i).update();
      }
      popMatrix();
    }
  }
  
  void explode(){
    for(int i=0; i < n; i++){
      Vehicle p = new Vehicle(firework.pos.x, firework.pos.y);
      //p.vel = PVector.random2D();
      //p.vel.mult(random(1, 3));
      subvehicles.add(p);
    }
    
  }
  
  void render(){
    if(!exploded){
      firework.render();
    }
    
    for(Vehicle sp : subvehicles){
       sp.render();
    }
    
  }
    
}