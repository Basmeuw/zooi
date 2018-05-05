import processing.video.*;

Capture video;


color trackColor = color(255, 0, 0);
int w = 640;
int h = 360;

float threshold = 25;

ArrayList<Blob> blobs = new ArrayList<Blob>();

void setup(){
  size(640, 360);
  video = new Capture(this, w, h, 30);
  video.start();
}

void draw(){
  background(0);
  if(video.available()){
    video.read();
  }
  image(video, 0, 0);
  
  blobs.clear(); 
  
  for(int x=0; x < width; x++){
     for(int y=0; y < height; y++){
       color currentColor = video.pixels[x + y*width];
       float r1 = red(currentColor);
       float g1 = green(currentColor);
       float b1 = blue(currentColor);
       float r2 = red(trackColor);
       float g2 = green(trackColor);
       float b2 = blue(trackColor);
       
       float d = abs((r2-r1)*(r2-r1) + (g2-g1)*(g2-g1) + (b2-b1)*(b2-b1));
       //distSq(r1, g1, b1, r2, g2, b2);

 
       
       if(d < threshold*threshold){
         
         boolean found = false;
         for(Blob b : blobs){
           if(b.isNear(x, y)){
             b.add(x,y);
             found = true;
             break;
           }
         }
         
         if(!found){
           blobs.add(new Blob(x, y));
         }

       }
     }
  }
  
  for(Blob b : blobs){
    if(b.area() > 500){
       b.show();
    }

  }

  
}

void mousePressed(){
  trackColor = get(mouseX, mouseY);
  //println(red(trackColor) + ", " + green(trackColor) + ", " + blue(trackColor));
}