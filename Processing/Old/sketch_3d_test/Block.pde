public class Block{
  
  float x, y, z;
  float w = 10;
  float h = 10;
  float d = 10;
  
  public Block(float x, float y, float z){
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
  public void render(){
    //translate(x, y, z);
    
    //beginShape();
    
    ////Front Top Left
    //vertex(0, 0, 0);
    ////Front Top Right
    //vertex(w, 0, 0);
    ////Front Bottom Left
    //vertex(0, h, 0);
    ////Front Bottom Right
    //vertex(w, h, 0);
    ////Back Top Left
    //vertex(0, 0, d);
    ////Back Top Right
    //vertex(w, 0, d);
    ////Back Bottom Left
    //vertex(0, h, d);
    ////Back Bottom Right
    //vertex(w, h, d);
    
    //endShape();
    
    fill(255);
    pushMatrix();
    beginShape();
    vertex(-1, 1, 1);
    vertex( 1, 1, 1);
    vertex(-1,-1, 1);
    vertex( 1,-1, 1);
    vertex(-1, 1,-1);
    vertex( 1, 1,-1);
    vertex(-1,-1,-1);
    vertex( 1,-1,-1);
    endShape();
    popMatrix();
  }
  
}