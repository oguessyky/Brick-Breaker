class Brick
{
  float x; //brick x
  float y; //brick y
  float w; //brick width
  float h; //brich height
  float c; //brick curve
  float r; //brick red val
  float g; //grick green val
  float b; //brick blue val

  boolean hit; //whether or not the brick has been hit


    Brick(float x0, float y0)
  {
    x = x0;
    y = y0;

    //pastel colors
    r = random(128, 255);
    g = random(128, 255);
    b = random(128, 255);
    w = 50; //brick width
    h = 25; //brick height
    c = 20;

    hit = false; //brick is initially not hit
  }

  //Draws the brick
  void update()
  {
    noStroke();
    fill(r, g, b);
    rect(x, y, w, h, c);
  }

  //What happens to the brick once it gets hit
  void gotHit()
  {
    hit = true; //brick recognizes that it has been hit

    r = 0;
    g = 0;
    b = 0;
    //rect(x, y, w, h, c);
    rect(0, 0, 0, 0, 0);
  }
  
}
