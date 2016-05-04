
class Invaders
{
  
  
  void render()
  {
   //for loop w/ Boolean to destroy individual invaders 
   for (int x = 25; x < 475; x += 50) 
  {
    for (int y = 50; y < 200; y += 50)

    {
      // if boolean is true, draw bricks. if brick is hit, it will turn false and not draw brick
      //if (invaderHit [x][y] == true)
      {
      stroke (189,255,88);
      //fill (87,255,85);
      noFill();
      rect  (x,y, invaderW, invaderH);
      
      }
    }
  }
  
 } 
}
