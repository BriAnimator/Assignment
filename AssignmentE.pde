float playerX;
float playerY;
float playerHeight = 25;
float playerWidth = 50;
float halfWidth = playerWidth * 0.5f;
float halfHeight = playerHeight * 0.5f;

Ship ship;
Shields shields;


void setup()
{
  ship = new Ship();
  shields = new Shields();
  
  size(500,600);
  playerX = width / 2;
  playerY = height - playerHeight;
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
  
  ship.update();
  ship.render();
  
  shields.render();
  
  //float halfWidth = playerWidth * 0.5f;
  //float halfHeight = playerHeight * 0.5f;
  
  //line (playerX - halfWidth, playerY + halfHeight
  //  , playerX + halfWidth, playerY + halfHeight);
  //line (playerX - halfWidth, playerY + halfHeight
  //    , playerX - halfWidth, playerY);
  //line(playerX - halfWidth, playerY
  //    , playerX - (playerWidth * 0.25f), playerY - halfHeight);
  //line(playerX - (playerWidth * 0.25f), playerY - halfHeight
  //    , playerX + (playerWidth * 0.25f), playerY - halfHeight);
  //line(playerX + (playerWidth * 0.25f), playerY - halfHeight
  //    , playerX + halfWidth, playerY);
  //line(playerX + halfWidth, playerY
  //  , playerX + halfWidth, playerY + halfHeight);
  
  
  //if (keyPressed)
  // {
  //   if (keyCode == LEFT && playerX > halfWidth)
  //   {
  //     playerX --;
  //   }
  //   if (keyCode == RIGHT && playerX < width - halfWidth)
  //   {
  //     playerX ++; 
  //   }
  // }
     
}