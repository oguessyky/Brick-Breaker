void win(){
  
  //Says "You win!", displays score, max streak, and allows user to click screen to play again. 
  //background(0);
  image(WIN,0,0);
  textSize(30);
  fill(0);
  text("YOU WIN!", 70, height - 250);
  text("Score: " + gameScore, 60, height - 200);
  text("Max Streak: " + maxStreak, 95,height - 150); 
  text("Click mouse to play again!", 175, height - 100);
  noFill();
  
  //The game is still technically playing when this screen is brought up, 
  //so these steps help to isolate the ball.
  ball2.x = -10;
  ball2.y = -10;
  ball2.vx = 0;
  ball2.vy = 0;

}
