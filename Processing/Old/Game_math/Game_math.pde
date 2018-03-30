Vector p1;
Vector p2;
Vector p1p2;
Vector v;

void setup() {
  size(400, 400);
  
  p1 = new Vector(60, 0);
  p2 = new Vector(50, 10);
  p1p2 = new Vector();
  v = new Vector(1, 0);
  
  translate(width/2, height/2);
  fill(200, 0, 0);
  ellipse(p1.x, p1.y, 16, 16);
  fill(200, 200, 0);
  ellipse(p2.x, p2.y, 16, 16);
  pushMatrix();
  translate(p1.x, p1.y);
  v.display(10);
  popMatrix();
  
  p1p2 = sub(p1, p2);
  p1p2.normalize();
  
  if(dot(v, p1p2) < -0.5){
    println("Behind");
  }else{
    println("Not behind"); 
  } 
  
  
  p1p2.vprintln();
    
}