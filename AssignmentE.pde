float playerX;
float playerY;
float playerHeight = 25;
float playerWidth = 50;
float halfWidth = playerWidth * 0.5f;
float halfHeight = playerHeight * 0.5f;
boolean [][] invaderHit = new boolean [14][5];

int score;

float invaderW = 35;
float invaderH = 20;
float invaderX;
float invaderY;



//float[]invaderX=new float [700];
//float[]invaderY=new float [700];
//int i=0;

Ship ship;
Shields shields;
Invaders invaders;


void setup()
{
  ship = new Ship();
  shields = new Shields();
  invaders = new Invaders();
  
  size(500,600);
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
  background(0);
  stroke(255);
  
  text("Score: " + score, 10, 20);
  textSize(13);
  
  
  ship.update();
  ship.render();
  
  shields.render();
  
  invaders.render();
  
}

