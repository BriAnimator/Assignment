//Player
float playerX;
float playerY;
float playerHeight = 25;
float playerWidth = 50;
float halfWidth = playerWidth * 0.5f;
float halfHeight = playerHeight * 0.5f;


int score;

//Invaders
float invaderW = 35;
float invaderH = 20;
float invaderX;
float invaderY;
boolean [][] invaderHit = new boolean [14][5];

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
  
  bg = loadImage("Pillars.png");
  //bg = loadImage("Space.png");
  
  playerX = width / 2;
  playerY = height - playerHeight;
  
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
  background(bg);
  stroke(255);
  
  y++;
  if (y > height)
  {
    y = 0;
  }
  
  text("Score: " + score, 10, 20);
  textSize(13);
  
  
  ship.update();
  ship.render();
  
  shields.render();
  
  invaders.render();
  
}

