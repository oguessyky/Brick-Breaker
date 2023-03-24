void lose(){
   //Says "Game over", displays score, max streak, and allows user to click screen to play again. 
  //background(0);
  image(LOSE,0,0);
  textSize(50);
  fill(255,255,255);
  text("GAME OVER", width/2, height/7);
  text("Score : " + gameScore, width/2, height/4);
  text("Max Streak : " + maxStreak, width/2, height/3); 
  text("Click mouse to play again!", width/2, height/2 + 100);

  //The game is still technically playing when this screen is brought up, 
  //so these steps help to isolate the ball.
  ball2.x = -10;
  ball2.y = -10;
  ball2.vx = 0;
  ball2.vy = 0;

}
