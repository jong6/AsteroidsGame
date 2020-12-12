class Asteroid extends Floater
{
  protected double rotSpeed;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -12;
    yCorners[0]= -10;
    xCorners[1]= 7;
    yCorners[1]= -9;
    xCorners[2]= 12;
    yCorners[2]= 0;
    xCorners[3]= 9;
    yCorners[3]= 10;
    xCorners[4]= -10;
    yCorners[4]= 10;
    xCorners[5]= -5;
    yCorners[5]= 0;
    myCenterX = myCenterY = Math.random()+500;
    myColor = color(128);
    myXspeed = Math.random()*3-2;
    myYspeed = Math.random()*3-2;
    myPointDirection = 0;
    rotSpeed = Math.random()*7-3;
  }
  public void move()
  {
    turn (rotSpeed);
    super.move();
  }
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
}
