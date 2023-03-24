class Box{
 
  float x; //paddle x
  float y; //padlle y
  float w; //paddle width
  float h; //paddle height
  float c; //brick curve
  float r; //paddle red val
  float g; //paddle green val
  float b; //paddle blue val
  float speed;
  
  Box(){
    x = 400;
    y = 800;
    w = 100;
    h = 10;
    c = 20;
    speed = 7;
  }
  
  void update(){
    
    if((keyPressed == true) && (key == CODED)){
      if(keyCode == LEFT){
        x -= speed;
      }
      else if(keyCode == RIGHT){
        x += speed;
      }
    }
    
    if(x + w > width){
      x = width - w;
    }
    else if(x < 0){
      x = 0;
    }
    
    rect(x, y, w, h, c);
  }
  
  void reset(){
    x = 400;
    y = 800;
  }
    

 }
  
  
  
