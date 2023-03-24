

//Global Variables
//final == const

final int intro = 1;
final int playing = 2;
final int pause = 3;
final int win = 4;
final int lose = 5;

/*declare photo set*/
PImage photo;
PImage logo;
PImage WIN;
PImage LOSE;
PImage SongList;
PImage WATER;
PImage Ball_1;

/*declare music set*/
Minim minim;
AudioPlayer start;
AudioPlayer background;
AudioPlayer background_2;
AudioPlayer background_3;
AudioPlayer background_4;
AudioPlayer background_5;
AudioPlayer background_6;
//SoundFile pop;

/*total brick*/
/*for the rows and cols it got problem in this two thing sometime will easly show error*/
/*went tis show error just change the number that you provide then will be solve*/
int rows = 10; //Number of bricks per row [maximum rows]
int columns = 10; //Number of columns [maximum cols]
int total = rows * columns; //Total number of bricks


int mode;
int score = 0; //How many bricks have been hit by the player
int gameScore = 0; //The player's score which displays on the screen.
int streak = 0;  //How many bricks in a row the player has hit without the ball touching the paddle or using a missile.
int maxStreak = 0; //Max streak in any given round
int lives = 5; //lives
int drawing;


/*calling struck*/
Ball player_ball;
Box player_paddle;
Brick[] box = new Brick[total]; //Initialize the array that will hold all the bricks
Box paddle2 = new Box(); //initialize paddle (it is called paddle2, b/c paddlle1 looks weird when it's typed)
Ball ball2 = new Ball(); //initialize ball (named ball2 for the same reason as above)
