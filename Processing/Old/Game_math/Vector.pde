public class Vector {

  float x, y;

  public Vector(){
    this.x = 0;
    this.y = 0;
  }
  
  public Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }

  public void set(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  public void randomVector(float min, float max){
    this.x = random(min, max); 
    this.y = random(min, max);
  }
  
  public void add(Vector other) {
    this.x += other.x;
    this.y += other.y;
  }

  public void sub(Vector other) {
    this.x -= other.x;
    this.y -= other.y;
  }
  
  public void mult(Vector other) {
    this.x *= other.x;
    this.y *= other.y;
  }
  
  public void mult(float x) {
    this.x *= x;
    this.y *= x;
  }
  
  public void mult(float x, float y) {
    this.x *= x;
    this.y *= y;
  }
  
  public void div(Vector other) {
    this.x /= other.x;
    this.y /= other.y;
  }
  
  public void div(float x) {
    this.x /= x;
    this.y /= x;
  }
  
  public void div(float x, float y) {
    this.x /= x;
    this.y /= y;
  }
  
  public float mag(){
    return (float) sqrt(this.x*this.x + this.y*this.y);
  }
  
  public float magSqr(){
     return (this.x*this.x + this.y*this.y);
  }
  
  public void normalize(){
    this.div(this.mag());
  }
  
  public void display(){
    line(0, 0, this.x, this.y);
  }
  
  public void display(float multiplier){
    line(0, 0, this.x * multiplier, this.y * multiplier);
  }
 
  // Methods for printing
  public void vprint() {
    print(this.x + ", " + this.y);
  }

  public void vprintln() {
    println(this.x + ", " + this.y);
  }
}

// Methods that need to be called without having an instance of a Vector object
public Vector add(Vector v1, Vector v2) {
    return new Vector(v1.x + v2.x, v1.y + v2.y);
}

public Vector sub(Vector v1, Vector v2) {
    return new Vector(v1.x - v2.x, v1.y - v2.y);
}

public Vector mult(Vector v1, Vector v2) {
    return new Vector(v1.x * v2.x, v1.y * v2.y);
}

public Vector mult(Vector v, float val) {
    return new Vector(v.x * val, v.y * val);
}

public Vector div(Vector v1, Vector v2) {
    return new Vector(v1.x / v2.x, v1.y / v2.y);
}

public Vector div(Vector v, float val) {
    return new Vector(v.x / val, v.y / val);
}

public Vector normalize(Vector v){
  return (div(v, v.mag()));
}

public float dot(Vector v1, Vector v2){
  return (v1.x * v2.x + v1.y * v2.y);
}

public Vector randomVector(float min, float max){
    return(new Vector(random(min, max), random(min, max)));
}

//Methods for printing
public void print(Vector v){
  print(v.x + ", " + v.y); 
}

public void println(Vector v){
  println(v.x + ", " + v.y); 
}