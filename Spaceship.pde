class Spaceship extends Floater  
{   
  public Spaceship() 
  {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myCenterX = 250;
    myCenterY = 250;
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;
  }
  public void hyperspace()
  {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = ((int)(Math.random()*400)+50);
    myCenterY = ((int)(Math.random()*400)+50);
    myPointDirection = (int)(Math.random()*360);
  }
}
