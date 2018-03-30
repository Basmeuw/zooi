public class Vector3 {

  float x, y, z;

  public Vector3(){
    this.x = 0;
    this.y = 0;
    this.z = 0;
  }
  
  public Vector3(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }

  public void set(float x, float y, float z){
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
  public void randomVector(float min, float max){
    this.x = random(min, max); 
    this.y = random(min, max);
    this.z = random(min, max);
  }
  
  public void add(Vector3 other) {
    this.x += other.x;
    this.y += other.y;
    this.z += other.z;
  }

  public void sub(Vector3 other) {
    this.x -= other.x;
    this.y -= other.y;
    this.z -= other.z;
  }
  
  public void mult(Vector3 other) {
    this.x *= other.x;
    this.y *= other.y;
    this.z *= other.z;
  }
  
  public void mult(float val) {
    this.x *= val;
    this.y *= val;
    this.z *= val;
  }
  
  public void mult(float x, float y, float z) {
    this.x *= x;
    this.y *= y;
    this.z *= z;
  }
  
  public void div(Vector3 other) {
    this.x /= other.x;
    this.y /= other.y;
    this.z /= other.z;
  }
  
  public void div(float x) {
    this.x /= x;
    this.y /= x;
    this.z /= x;
  }
  
  public void div(float x, float y, float z) {
    this.x /= x;
    this.y /= y;
    this.z /= z;
  }
  
  public float mag(){
    return (float) sqrt(this.x*this.x + this.y*this.y + this.z*this.z);
  }
  
  public float magSqr(){
     return (this.x*this.x + this.y*this.y + this.z*this.z);
  }
  
  public void normalize(){
    this.div(this.mag());
  }
  
  //public void display(){
  //  line(0, 0, this.x, this.y);
  //}
  
  //public void display(float multiplier){
  //  line(0, 0, this.x * multiplier, this.y * multiplier);
  //}
 
  // Methods for printing
  public void vprint() {
    print(this.x + ", " + this.y + ", " + this.z);
  }

  public void vprintln() {
    println(this.x + ", " + this.y + ", " + this.z);
  }
}

// Methods that need to be called without having an instance of a Vector object
public Vector3 add(Vector3 v1, Vector3 v2) {
    return new Vector3(v1.x + v2.x, v1.y + v2.y, v1.z + v2.z);
}

public Vector3 sub(Vector3 v1, Vector3 v2) {
    return new Vector3(v1.x - v2.x, v1.y - v2.y, v1.z - v2.z);
}

public Vector3 mult(Vector3 v1, Vector3 v2) {
    return new Vector3(v1.x * v2.x, v1.y * v2.y, v1.z * v2.z);
}

public Vector3 mult(Vector3 v, float val) {
    return new Vector3(v.x * val, v.y * val, v.z * val);
}

public Vector3 div(Vector3 v1, Vector3 v2) {
    return new Vector3(v1.x / v2.x, v1.y / v2.y, v1.z / v2.z);
}

public Vector3 div(Vector3 v, float val) {
    return new Vector3(v.x / val, v.y / val, v.z / val);
}

public Vector3 normalize(Vector3 v){
  return (div(v, v.mag()));
}

public float dot(Vector3 v1, Vector3 v2){
  return (v1.x * v2.x + v1.y * v2.y + v1.z * v2.z);
}

public Vector3 randomVector3(float min, float max){
    return (new Vector3(random(min, max), random(min, max), random(min, max)));
}

//Methods for printing
public void print(Vector3 v){
  print(v.x + ", " + v.y + ", " + v.z); 
}

public void println(Vector3 v){
  println(v.x + ", " + v.y + ", " + v.z); 
}