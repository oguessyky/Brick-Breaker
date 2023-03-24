

void song(){
  
  /**/
    if((keyPressed == true) && (key == '0')){
      pause_sound();
      start.play();
      start.loop();
    }
  
    else if((keyPressed == true) && (key == '1')){
      pause_sound();
      background.play();
      background.loop();
    }
  
    else if((keyPressed == true) && (key == '2')){
      pause_sound();
      background_2.play();
      background_2.loop();
    }
  
    else if((keyPressed == true) && (key == '3')){
      pause_sound();
      background_3.play();
      background_3.loop();
    }
    
    else if((keyPressed == true) && (key == '4')){
      pause_sound();
      background_4.play();
      background_4.loop();
    }
    
    else if((keyPressed == true) && (key == '5')){
      pause_sound();
      background_5.play();
      background_5.loop();
    }
    
    else if((keyPressed == true) && (key == '6')){
      pause_sound();
      background_6.play();
      background_6.loop();
    }
    
    else if((keyPressed == true) && (key == 's')){
      song_list();
    }
  



}

void pause_sound(){
  start.pause();
  start.rewind();
  
  background.pause();
  background.rewind();
  
  background_2.pause();
  background_2.rewind();
  
  background_3.pause();
  background_3.rewind();
  
  background_4.pause();
  background_4.rewind();
  
  background_5.pause();
  background_5.rewind();
  
  background_6.pause();
  background_6.rewind();
}
  
void song_list(){
  background(0);
  //image(SongList,0,0);
  noFill();
  noStroke();
  textSize(30);
  
  //fill(6.9702854,28.385845,7881189);
  fill(34.851425,141.92923,394.05945);
  
  text("0: 【千與千尋片尾曲】永遠同在-Always With Me", 258,50); 
  text("1: Castle in the Sky - Kimi o Nosete Carrying You 君をのせて",364,100); 
  text("2: G.E.M. 鄧紫棋《GLORIA》", 168,150); 
  text("3: S.C NightCore千本櫻 輕柔女聲英文版", 217,200); 
  text("4: 鞠文嫻 - BINGBIAN病變 (女聲版) Feat. Deepain【動態歌詞Lyrics】", 375,250); 
  text("5: YOASOBI「群青」Official Music Video", 245,300); 
  text("6: YOASOBI「あの夢をなぞって・Tracing that Dream」", 310,350); 
  
  noFill();
  noStroke();
  
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
