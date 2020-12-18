class Bullet extends Floater
{
  
  public Bullet()
  {
    myCenterX = USS.getX();
    myCenterY = USS.getY();
    myXspeed = USS.getSpeedX();
    myYspeed = USS.getSpeedY();
    myPointDirection = USS.getdirect();
    accelerate(3);
  }
  public void show()
  {
    fill(255,255,0);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public void move()
  {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
  
  public double getX()
  {
    return myCenterX;
  }
  public double getY()
  {
    return myCenterY;
  }
  
  
  public double getXSpeed()
  {
    return myXspeed;
  }
  public double getYSpeed()
  {
    return myYspeed;
  }
  

}
