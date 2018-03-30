class Vehicle {
  
  PVector pos;
  PVector vel;
  PVector acc;
  float r;
  float arriveradius;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed

  Vehicle(float x, float y) {
    acc = new PVector(0,0);
    vel = new PVector(0,0);
    pos = new PVector(x,y);
    r = 6;
    arriveradius = 100;
    maxspeed = 10;
    maxforce = 0.1;
  }


  void update() {
    vel.add(acc);
    vel.limit(maxspeed);
    pos.add(vel);
    acc.mult(0);
   }

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acc.add(force);
  }

  // A method that calculates a steering force towards a target
  // STEER = DESIRED MINUS VELOCITY
  void arrive(PVector target) {
    PVector desired = PVector.sub(target,pos);  // A vector pointing from the location to the target
    float d = desired.mag();
    // Scale with arbitrary damping within 100 pixels
    if (d < 100) {
      desired.setMag(map(d, 0, arriveradius, 0, maxspeed));
    } else {
      desired.setMag(maxspeed);
    }

    // Steering = Desired minus Velocity
    // Fres = Fd - Fv
    PVector steer = PVector.sub(desired,vel);
    steer.limit(maxforce);  // Limit to maximum steering force
    applyForce(steer);
  }
  
  void display() {
    ellipse(pos.x, pos.y, 5, 5);
  }
}