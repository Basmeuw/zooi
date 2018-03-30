class Player{
 PVector pos;
 
 float w = 40;
 float h = 80;
 
 float speed = 5;
  
  Player(){
   pos = new PVector(width/2, height/2);
 }
 
 void update(){
   
   
   render();
 }
 
 void render(){
   pushMatrix();
   translate(pos.x, pos.y);
   line(0, 0, w, h);
   line(0, h, w, 0);
   popMatrix();
   
 }
  
}