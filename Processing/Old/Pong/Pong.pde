float paddle_speed = 5;
float ball_speed = 5;
float paddle_width = 15;
float paddle_height = 100;
float ball_diam = 16;

PVector p1_pos;
PVector p2_pos;
PVector ball_pos;

void setup(){
  p1_pos = new PVector(0, height/2 - paddle_height/2);
  p2_pos = new PVector(width - paddle_width, height/2 - paddle_height/2);
  ball_pos = new PVector(width/2 - ball_diam/2, height/2 - ball_diam/2);
  size(800, 600);
}

void draw(){
  background(0);
  
  update();
  render();
}

void update(){
  ball_pos.x += ball_speed;
  ball_pos.y += ball_speed;
}

void keyPressed(){
  //switch (key){
  //  case 'q': p1_pos.y -= paddle_speed;
  //  case 'e': p1_pos.y += paddle_speed;
  //  case 'i': p2_pos.y -= paddle_speed;
  //  case 'p': p2_pos.y += paddle_speed;
  //}
  if(key == 'q'){
    p1_pos.y -= paddle_speed;
  }
  if(key == 'e'){
    p1_pos.y += paddle_speed;
  }
  if(key == 'i'){
    p2_pos.y -= paddle_speed;
  }
  if(key == 'p'){
    p2_pos.y += paddle_speed;
  }
}

void render(){
  
  ellipse(ball_pos.x, ball_pos.y, ball_diam, ball_diam);
  rect(p1_pos.x, p1_pos.y, paddle_width, paddle_height); 
  rect(p2_pos.x, p2_pos.y, paddle_width, paddle_height); 
}