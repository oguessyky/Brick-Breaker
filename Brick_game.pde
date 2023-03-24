import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup(){
  frameRate(60);
  size(900,900);
  
  /*photo set up*/
  photo = loadImage("background.jpg");
  photo.resize(width,height);
  
  logo = loadImage("TOA LOGO-black.png");
  
  LOSE = loadImage("win.jpg");
  LOSE.resize(width,height);
  
  WIN = loadImage("lose.jpg");
  WIN.resize(width,height);
  
  SongList = loadImage("song_list.jpg");
  
  WATER = loadImage("space.jpg");
  WATER.resize(width,height);
  
  /*Ball design*/
  Ball_1 = loadImage("Ball_1.png");
  Ball_1.resize(20,20);

  
  ellipseMode(RADIUS);
  mode = intro;

  //brick = new Brick();
  
  /*set up brick*/
  for (int i = 0; i < rows; i++)
  {
    for (int j = 0; j< columns; j++)
    {
      box[i*rows + j] = new Brick((i+1) *width/(rows + 2), (j+1) * 40); //places all the bricks into the array, properly labelled.
    }
  }
  
  /*music set up*/
  minim = new Minim(this);
  start = minim.loadFile("【千與千尋片尾曲】永遠同在-Always With Me (中日歌詞) (320K).mp3");
  background = minim.loadFile("Castle in the Sky - Kimi o Nosete Carrying You 君をのせて.mp3");
  background_2 = minim.loadFile("G.E.M. 鄧紫棋《GLORIA》Official Music Video _ Chapter 01 _ 啓示錄 REVELATION (320K).mp3");
  background_3 = minim.loadFile("S.C NightCore千本櫻 輕柔女聲英文版.mp3");
  background_4 = minim.loadFile("鞠文嫻 - BINGBIAN病變 (女聲版) Feat. Deepain【動態歌詞Lyrics】.mp3");
  background_5 = minim.loadFile("YOASOBI「群青」Official Music Video.mp3");
  background_6 = minim.loadFile("YOASOBI「あの夢をなぞって・Tracing that Dream」.mp3");
  
  
  
  /*music volume set up*/
/*volumeeeeeeeeeeeeeeeeeeeeeeeeee*/

  /*text size*/
  textSize(50);
  textAlign(CENTER, CENTER);
  
  
}

void draw(){
  if(mode == intro){
    intro();
  }
  
  else if(mode == playing){
    playing();
    
    /*for(int brickNum = brick.size() - 1; brickNum >= 0; brickNum--){
    Brick newBrick = brick.get(brickNum);
    newBrick.draw();
    collision = newBrick.collidesWithBall();
    if(collision == true){
      brick.remove(newBrick);
    }
  }*/
    //draw_bricks();
  }
  
  else if(mode == pause){
    pause();
  }
  
  else{
    println("MODE ERROR");//same thing as printf
  }
  
  if((keyPressed == true) && (key == 'e')){
    exit();
  }
  

}


void displayText(String message, int t_width, int t_height, int t_size, boolean isCentered) {
   fill(255);
   textSize(t_size);
   String name = message;
   float textX = t_width;
   
   if(isCentered) {
     float widthText = textWidth(name);
     textX = (width - widthText) / 2;
   }

   text(name, textX, t_height);
}
