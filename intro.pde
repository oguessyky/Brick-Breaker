void intro(){
  
  /*set the song to play the start sound*/
  start.play();

  //background(12, 22, 79);
  image(WATER,0,0);
  image(logo,width/6,100);
  stroke(255);
  fill(118, 73, 254);
  textSize(150);
  text("BRICK GAME !",width/2,height/3);
  
  textSize(50);
  text("Right click to start the game",width/2, height/2);
  fill(120,120,120);
  text("press 'q' to stop the game", (int)textWidth("press 'q' to stop the game") - 80 ,height/2 + 100);
  textSize(30);
  fill(110,110,110);
  text("press 'c' to change the ball design", (int)textWidth("press 'c' to change the ball design") + 40 ,height/2 + 150);
  
  textSize(70);
  fill(120,170,120);
  text("This game make by Oguess", (int)textWidth("This game make by Oguess") - 350, height/2 +350);
  
  noFill();
  textSize(25);
  fill(100,100,100);
  text("press 'e' to exit this game",(int)textWidth("press 'e' to exit this game") + 190,height/2 + 180);
  noFill();
  
  if(mousePressed == true){
    pause_sound();
    background.play();
    
    mode = playing;
  }
  else if((keyPressed == true) && (key == 's')){
      song_list();
    }
}

//Function that Resets the game
void resetGame()
{

  //Setup array of all bricks on screen
  for (int i = 0; i < rows; i++)
  {
    for (int j = 0; j< columns; j++)
    {
      box[i*rows + j] = new Brick((i+1) *width/(rows + 2), (j+1) * 40);
    }

    //Reset all the score values
    score = 0;
    gameScore = 0;
    streak = 0;
    maxStreak = 0;
    lives = 5;
  }

  //Reset the ball as well
  ball2.reset();
  
  //Reset the paddle too
  paddle2.reset();
}
