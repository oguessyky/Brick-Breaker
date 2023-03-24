void pause(){
  if((keyPressed == true) && (key == 'q')){
    ball2.vx = 0;
    ball2.vy = 0;
    fill(255,20,23);
    text("press 'a' to replay", width/2,height/2); 
    text("press 's' to see song list", width/2,height/2 + 100);
    noFill();
  }
  if((keyPressed == true) && (key == 'a')){
    resetGame();
  }
  
}
