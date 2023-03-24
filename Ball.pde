


//This is a struct
class Ball {
    //1. Variables for ball
    float x;  //ball x
  float y; //ball y
  float vx; //ball velocity in x
  float vy; //ball velocity in y 
  float D; //ball diameter
  float R = 120 , G = 120, B = 120;
  
  //2.Constructor
  Ball(){
     x = 450;
    y = 600;
    vx = 0; //Initially, ball just falls straight down
    vy = 4; 
    D = 10;
  }
  
  //Functions for ball to move and print
  void update(){
    noStroke();
    stroke(R*5,G*5,B*5);
    fill(R,G,B);
    
    y += vy; //increment y
    x += vx; //increment x
  
  /***************************Ball design**********************************/
  if((keyPressed == true) && (key == 'c')){
    drawing += 1;
  }
  
  if(drawing == 0){
    ellipse(x, y, D, D);
  }
  
  else if(drawing == 1){
    pushMatrix();
    //translate(width*0.2, height*0.5);
    //rotate(frameCount / 200.0);
    star(x, y, D/2, D, 7); 
    popMatrix();
  }
  
  else if(drawing == 2){
    image(Ball_1,x,y);
  }
  
  else if(drawing >= 3){
    drawing = 0;
  }
 }
  /*******************Ball Design until here********************/
  
void random_colour(){
    R = random(255);
    G = random(255);
    B = random(255);
    println("R = "+ R);
    println("G = "+ G);
    println("B = "+ B);
    println("\n");
    println("R*5 : " + R*5);
    println("G*5 : " + G*5);
    println("B*5 : " + B*5);
    println("\n");
}
  
  
  //Ball goes left
  void goLeft()
  {
    vx = -4; //decrement x
  }

  //Ball goes right
  void goRight()
  {
    vx = 4; //increment x
  }

  //Ball changes in y direction
  void changeY()
  {
    vy *= -1; 
  }

  //If ball goes below paddle, reset
  void reset()
  {
    x = width/2;
    y = height - 400;
    vx = 0;
    vy = 4;
  }
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
    
    
    
    
    
    

 
 
 
 
 
 
