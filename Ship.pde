
class Ship
{
  //float playerX;
  //float playerY;
  //float playerHeight = 25;
  //float playerWidth = 50;
  //float halfWidth = playerWidth * 0.5f;
  //float halfHeight = playerHeight * 0.5f;
    
  
  
  Ship()
  {
    
  }
  
  void update()
  {
    
    
    if (keyPressed)
    {
      if (keyCode == LEFT && playerX > halfWidth)
      {
        playerX --;
      }
      if (keyCode == RIGHT && playerX < width - halfWidth)
      {
        playerX ++; 
      }
    }
    
    
  }
  
  void render()
  {
    stroke(255);
    
    //Bottom Line
    line (playerX - halfWidth, playerY + halfHeight
     , playerX + halfWidth, playerY + halfHeight);
     
     //Left Side
    line (playerX - halfWidth, playerY + halfHeight
      , playerX - halfWidth, playerY);
      
      //Left Slant
    line(playerX - halfWidth, playerY
      , playerX - (playerWidth * 0.25f), playerY - halfHeight);
       
     //Top line  
    line(playerX - (playerWidth * 0.25f), playerY - halfHeight
      , playerX + (playerWidth * 0.25f), playerY - halfHeight);
       
     //Right Slant 
    line(playerX + (playerWidth * 0.25f), playerY - halfHeight
      , playerX + halfWidth, playerY);
     
     //Right Side
    line(playerX + halfWidth, playerY
     , playerX + halfWidth, playerY + halfHeight);
  }
  
  
}
  