
class Invaders
{

  void render()
  {

    for (int x = 25; x < 475; x += 50) 
    {
      for (int y = 50; y < 200; y += 50)

      {
        { 

          stroke (189, 255, 88);
          //fill (87,255,85);
          noFill();

          //        if(invaderKill[x][y] == false)
          {
            rect(x, y, invaderW, invaderH);
          }

          if (keyPressed)
          {      
            if (key == ' ')
            {   
              float bulletY = 0; 
              line(playerX, playerY-15, playerX, bulletY);         
              if (playerX > x && playerX < x + invaderW)
              {
                bulletY = x;
                score += 10;

                //invaderKill[x][y] = false;
              }
            }
          }
        }
      }
    }
  }
} 

