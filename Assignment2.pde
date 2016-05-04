//Player
float playerX;
float playerY;
float playerHeight = 25;
float playerWidth = 50;
float halfWidth = playerWidth * 0.5f;
float halfHeight = playerHeight * 0.5f;


int score;
int lives = 3;

//Invaders
float invaderW = 35;
float invaderH = 20;
float invaderX;
float invaderY;
boolean [][] invaderHit = new boolean [14][5];


//Bullets
float bulletY;
float bulletX = width/2;
float bulletHeight = 30;

//Background Image 
PImage bg;
int y;

Ship ship;
Shields shields;
Invaders invaders;


void setup()
{
  
  ship = new Ship();
  shields = new Shields();
  invaders = new Invaders();
  
  size(500,600);
  
  //Background image
  bg = loadImage("Pillars.png");
  //bg = loadImage("Space.png");
  
  playerX = width / 2;
  playerY = height - playerHeight;
  
  bulletY = height - bulletHeight;
  
  //Invaders alive
  for (int x = 0; x < 14; x++) 
  {
    for (int y = 0; y < 5; y++)
    {
      invaderHit[x][y] = true;
    }
  } 
    
 } 

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}




void draw()
{
  //Background as an image 
  background(bg);
  stroke(255);
  
  
  
  //Backgorund
  y++;
  if (y > height)
  {
    y = 0;
  }
  
  //Score
  text("Score: " + score, 10, 20);
  textSize(13);
  
  text("Lives: " + lives,10, 40);
  
  //GameOver Screen
  if (lives < 0)
  {
    background(255);
    fill(129,255,88);
    text("Game Over",width * 0.40f,height * 0.5f);
    textSize(60);
  }
  
  //Restart
  if (key == ENTER)
  {
   lives = 3; 
  }
  
  
  ship.update();
  ship.render();
  
  shields.render();
  
  invaders.render();
  
}

