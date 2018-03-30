import peasy.*;

PeasyCam cam;

PVector[][] globe;
int detail = 20;

void setup(){
  size(600, 600, P3D);
  cam = new PeasyCam(this, 500);
  
  globe = new PVector[detail+1][detail+1];
}

void draw(){
  background(0);
  fill(255);
  lights();
  //sphere(200);
  
  float r = 200;

  
  for(int i=0; i < detail+1; i++){
    float lat = map(i, 0, detail, -PI/2, PI/2);
    for(int j=0; j < detail+1; j++){
      float lon = map(j, 0, detail, -PI, PI);
      
      //3D polar to 3D cartesian conversion
      float x = r * sin(lon) * cos(lat);
      float y = r * sin(lon) * sin(lat);
      float z = r * cos(lon);
      
      globe[i][j] = new PVector(x, y, z);
      //stroke(255);
      //point(x, y, z);

    }
     
  }
  
  for(int i=0; i < detail; i++){
    beginShape(TRIANGLE_STRIP);
    for(int j=0; j < detail+1; j++){      
      PVector v1 = globe[i][j];
      stroke(255);
      vertex(v1.x, v1.y, v1.z);
      PVector v2 = globe[i+1][j];
      vertex(v2.x, v2.y, v2.z);
      

    }
    endShape();
     
  }
}